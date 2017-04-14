Just a crazy question. Let us say I have a (rails 3) asset pipeline legacy app that is going to be “too hard” (for the moment) to get into a nice browserify system. Would it be _completely evil_ to have a self contained browserified part which would simply do it’s thing and then output a (minified but not fingerprinted) javascript file into `app/assets/javascripts/fancy_content.js` which would then be required (as normal) in your `app/assets/javascripts/application.js`. Yes you’d have to have a build step / process to ensure that was kept in sync, and if it was checked into git it’d be a bit horrible. However :wink: that aside, is it just too horrible a hack to think of? Am I going to be run out of dodge for even suggesting such a thing? :wink:  I just don’t like the look of the various browserify gems (as outlined in Phil & Sams talk), but it’s frankly not likely to replace all the (legacy prototype & jquery asset pipeline blob) in a hurry.

charlespeach [3:44 PM] 
@psdavey if it helps, we have basically that exact same thing but with webpack and our react front end

[3:44]  
seperate build, creates a `webpack-bundle.js` which is scooped up by the asset pipeline

maxhungry [3:44 PM] 
I don’t think that approach is as _dirty_ as you thought it would be

samseay [3:44 PM] 
its not evil. and usually browserify and webpack can do fingerprinting for you anyway

psdavey [3:44 PM] 
ah cool. ok, I’m feeling a lot less nasty now :wink:

samseay [3:45 PM] 
if you're worried about the git aspect then you can add it as a build step in travis or whatever thing you do deploy with

psdavey [3:46 PM] 
just capistrano. I dream of CI.

charlespeach [3:46 PM] 
the only annoying thing is if you don’t use something like foreman to run both at the same time, you end up with two terminal windows, one for js build and one for `rails s`

psdavey [3:46 PM] 
yip, I’m quite prepared to live with a bit of that to begin with that though.

[3:46]  
It was more whether the approach was riddled with gotchas. (edited)

[3:47]  
But it seems not, which is _fantastic_


charlespeach [3:47 PM] 
```- name: Create empty shared node_modules dir
  file: path={{ shared_path }}/node_modules state=directory

- name: Symlink shared node_modules
  file: src={{ shared_path }}/{{ item }} dest={{ melon_seed_dir.stdout }}/client/{{ item }} state=link force=yes
  with_items:
    - node_modules

- name: Node install and build
  command: /bin/bash -lc 'cd {{ melon_seed_dir.stdout }}/client && npm install || true && npm run build:production'
  args:
    chdir: '{{ this_release_path }}'
```

[3:47]  
I deploy with ansible, and this is the additional part for dealing with node/webpack

[3:48]  
if you are in `cap land` :tm: adding an additional task would be fine too :slightly_smiling_face:

[3:49]  
@psdavey your approach is actually less ‘dirty’ than ours anyways, our client code doesnt even live in the same repo as the rails app :slightly_smiling_face:

maxhungry [3:49 PM] 
don’t uglified in your build tool, I used to do that but one day assets pipeline just failed silently for whatever reason.

charlespeach [3:49 PM] 
have to do this first:

```- name: find new melon_seed dir
  command: /bin/bash -lc 'bundle show melon_seed'
  register: melon_seed_dir
  args:
    chdir: '{{ this_release_path }}'
```

psdavey [3:50 PM] 
As a matter of interest, with your self contained react side of things, are you using Jquery or some other library in both contexts? Like, a lot of things will already be in the regular asset pipeline world, and I woudn’t want to include them again in the react (well, probably/possibly Vue world). So do you just pass them in (I’m just thinking that `require` or whatever might not work? (I’m quite new to JS build pipelines though so forgive if that doesn’t make sense)

charlespeach [3:50 PM] 
we keep new js land and old js land as seperate as possible

psdavey [3:50 PM] 
so if you need a library in both places?

charlespeach [3:50 PM] 
still using jquery in places in old js land

psdavey [3:51 PM] 
so possibly included twice?

charlespeach [3:51 PM] 
yep likely. havent had that yet

[3:51]  
building with react or jquery doesnt see much cross over (edited)

psdavey [3:52 PM] 
right yip. tbh all the Vue code I’ve played with I didn’t use jQuery either. So yes, probably academic.

charlespeach [3:52 PM] 
we don’t use jquery on the react side, for example (would be weirdddddd) (edited)

[3:52]  
@psdavey let us know how you get on, should be relatively sane

psdavey [3:52 PM] 
yip sure. OK. well, thanks  all very much for the help & pointers.. and for a lot more confidence in the approach.
# lib/tasks/assets.rake
# The webpack task must run before assets:environment task.
# Otherwise Sprockets cannot find the files that webpack produces.
# This is the secret sauce for how a Heroku deployment knows to create the webpack generated JavaScript files.
Rake::Task["assets:precompile"]
  .clear_prerequisites
  .enhance(["assets:compile_environment"])

namespace :assets do
  # In this task, set prerequisites for the assets:precompile task
  task compile_environment: :webpack do
    Rake::Task["assets:environment"].invoke
  end

  desc "Compile assets with webpack"
  task :webpack do
    sh "cd client && npm run build:client"
  end

  task :clobber do
    rm_r Dir.glob(Rails.root.join("app/assets/javascripts/generated/*"))
  end
end
