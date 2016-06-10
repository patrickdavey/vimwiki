[notes](notes)
### 0010 fast tests with and without rails
look at DAS 10 rspec runner. Not sure how that's going to play with vim.rails though.

He uses the script runner to decide whether to run the tests in the context of rails or not (by whether spec_rails is in there)


### [React-Native: Should I Even Bother Learning Swift? - Forward 4 Web Summit](https://www.youtube.com/watch?v=2d0z_L4oXt8&index=20&list=PLndbWGuLoHebKI8krCzJU88Rf3TwhNZvH)
Yes you'll need to learn swift and iOS, but there's good code reuse with Android.

egghead.io for a react native tutorial.


### [RailsConf 2016 - Day 1 Closing Keynote: Skunk Works by Nickolas Means](https://youtu.be/ggPE-JHzfAM)
Fantastic historical run through the lockheed martin skunkworks division, SR71, U2 etc. Makes me want to re-read the book.

Look up "Kellys' Rules"

* Use a small number of good people
* The decision lies with whoever is on the spot 

Words of wisdom at the end
* skunkworks teams had huge trust and freedom given to them. Push for this if you don't already have it.
* The process that you follow should be the right size for your team
* You should know the most important things about your project, the context, so that you can contribute outside of just writing code. If that's not the case, push back hard - change it.
* If you're in a leadership role, you have a responsibility to give that freedom to your team.
* push decisions and responsibility down to your team - as much as you can.
*  clearly communicate the 2 or 3 more important thing, you have to give them the context and then trust them to do the right thing.


### [RailsConf 2014 - All the Little Things by Sandi Metz](https://youtu.be/8bZh5LMaSmE)
open closed means adding new behaviour means you don't have to change existing code

duplication is far cheaper than the wrong abstraction



### [GORUCO 2009 - SOLID Object-Oriented Design by Sandi Metz](https://youtu.be/v-2yFMzxqwU)
only mock objects I own

don't mock object under test

Refactor stage, check single responsibility
Check if it's insides change at the same rate
Check if it's dependencies change less often

extract, inject, Refactor


if you're going to instantiate an instance of a class, do it on your initialize method (dependency injection)


### 0044 untested code part 4 refactoring 2
He extracts a service class and then tests it directly. No loading of rails at all. In order to do this, he says that in order to prevent rails autorequiring issues he has to do this require in his blah_spec file.

`require File.expand_path(File.dirname(__FILE__) + "../../app/services/blah"`

also 'requires active_support/all`



### 0043 untested code part 3 refactoring 1
Rearranges and duplicates code until he has separate sections of the create action. One dealing with finding a book, another with adding the book to a user. He then moves the adding a book logic into the User model, and then he removes the test in the controller dealing with testing that the book was actually added to the user. Instead he uses a mock expectation on the user model to test that the user is called with the method to add the book. Very nice.


### 0042 untested code part 2 adding tests
He doesn't advocate isolated controller tests for legacy code, as it bakes in your boundaries. Instead integrated test. Also mentions smoke tests for when the application is just too big to get entirely under test, but so that you want confidence in even starting.

lovely, uses ```ruby controller.stub(:current_user) { user }``` for abstracting the actual signing in process. So obvious. 

What is heckle? sounds like a library which inverts your control logic.

He always double checks all if / unless blocks with their opposites and ensures he sees at least one test failure.

It's all good, except for the part where he stubs a Service object that he's using in the controller. I would have thought that wasn't allowed as he's depending on it and it isn't under test? That said, it is an instance_stub effectively (or that's what you'd use now) so maybe it's ok.

I should look at working effectively with legacy code actually.


### 0041 untested code part 1 introduction
Beautiful, goes through looking at a controller create action (not under test - legacy code) and then builds out a nested rspec describe/context/it structure which mirrors the code we want under test.

he puts the happiest path tests at the top of his file.

It really is so nice to watch!

Talks about making sure the cyclomatic complexity of the tests matches the code under test. that is, to make sure you're hitting all the different paths.

He also explicitly doesn't test the logged in / logged out behaviour in this test.


### 0047 brittle and fragile tests
Watch this one again.


### 0040 web apps when to test in isolation
Need to watch again, in summary
+ routes (untested)
+ controller (unit &amp; integration)
  * models (integrated - against DB)
  * app logic (isolated)
    *model
    * service wrappers (use VCR as boundary)
    * views (isolated)
      * presentors(isolated)
        * models

When you're the one who controls the dependencies, then you're allowed to mock them. Hehe, though you still need to have the IntegratedIsolationTest as described before.


### 0022 test isolation and refactoring
Excellent - gets to the core of what I was wondering about before, breaking the boundaries between objects in your stubbing, and having tests still pass.

He introduces the idea of an "IsolatedIntegrationTest" .. which is a simple test which doesn't touch the database (so it's nice and fast) but does ensure that at least the integration points are under test.

He also points out that in a compiled language, the compiler would be capturing these sorts of failures.

Crazy specfile including things like active_model etc. to make the tests super lean. Well, not crazy, just if I want to go down that route there's a lot to change. Good though, addresses the core issue I have, I probably will need to watch this one again a few times. I like the idea of explicitly having an integration test which does cover your dependencies, and then you're allowed to mock & stub as much as you like.


### 0024 notes on stubbing
Talked about incidental stubbing versus explicit stubbing (normal stub vs `as_null_object` when you don't care about the collaborator)

Also showed extending a stub with a module when you're trying to test a module, and using `stub!` to override individual methods on a stub in the test.

Still want to see him talk about test coverage.


### 0067 the mock obsession problem
Only stub what you need to stub (python project)

However, in the course of the refactor he has broken his code as he changed the method signature. So again, still hasn't talked about the issue with mocking your life away.


### 0007 growing a test suite
Shows adding more and more tests to a spec and then refactors it to first have multiple assertions in a spec, and then changes the design to introduce a value object (before that he had a stub return a stub)

I'm still not sure about all this mocking behaviour though. But then maybe I need to read up again on the boundaries of objects and where should be testing. Sandi Metz had a good talk on that.

I guess my real question is, where do you draw the line in how much of the system is really under test.


### 0006 conflicting principles
Shows how two design principles (Law of Demeter and Tell Don't ask) can conflict. They're just heuristics people.. 


### 0060 the vimrc
 I'd already stolen a few things. I will look into the spec running code that he uses, as that does seem nice. However, it _is_ rspec specific, and I do sometimes use minitest, so I will probably need to customize it.

I do like minitest a bit I admit.


### 0030 some vim tips
Perhaps use iterm-2 with pastel colorscheme and vim-colors-solarized ? plugin. At least try it out.

Reasonable introduction to how to go about learning vim (learn the normal mode keys, motions etc.) 

Turned off nerdtree also, I hardly use it, and :e with a directory does pretty similar stuff really.

Mapped <leader>f for command-P


### 0013 file navigation in vim
Remapped my leader to , as a result of this.
Also really like the Alternate file mapping (generally jumps you to the last buffer you were in). Doens't mean the same as the Alternate file in Rails.vim

Stole the %% mapping to get the current directory in command line,
and <leader>e to start finding a file to edit based on the directory of the current file.

I do like the way he moves his splits to always have 90 lines on the file he's editing, and 5 lines of context on the others. I need to see how he does that and grab it for testing if I like it.

I'm already using Command-P for fuzzy file matching, he was using Command-T, I should check which is actually better, Command-P may be the successor.


### 0005 extracting domain objects
He turns a call to grouping screencasts by month into a separate catalog class.

Interesting things - he requires 'lib/catalog' in the controller, he is not using autoloading.. which is interesting. He also creates a struct (rather than using an object) when it's just a blob of attributes he wants to store. I'm still not super loving the way he stubs everything out. I can see it makes things fast etc. (no database), but I'd still like to see one spec which is actually driving the main interaction (rendering HTML) so that we can see that the individual pieces still drive the main behaviour. He may actually be doing that though.

I also want to see how he uses his <leader>r "inline variable" refactoring. I'm not sure if that's custom Gary code, or if it's from the vim-refactorings ?! plugin. Time will tell. Or just LearnVimScriptTheHardWay...


### 0003 building rspec from scratch
Nice little episode, introduces instance_eval and makes me want to find out exactly how == is called (no dot required). I think it's just ruby sugar but I want to find out.


### 0004 source code history integrity
Another quality DAS. Introduction to the reflog, makes me want to steal his pretty git log alias, and then a way to use the rev-list to iterate over entries and do things. e.g.
```bash
git rev-list --reverse master | while read rev; do git checkout $rev; git clean -df; rake; done; git checkout master
```


### [Hello World - Machine Learning Recipes #1](https://www.youtube.com/watch?v=cKxRvEZd3Mw)
scikit learn and tensor flow libraries.

Really nice short little introduction to ML which really makes me want to learn more about it.  I need to come up with a small project I think :)


### [Mountain West Ruby 2016 - How Are Method Calls Formed? by Aaron Patterson](https://www.youtube.com/watch?v=6Dkjus07d9Y&list=PLE7tQUdRKcybjaXiRW_mjOuw1JGrWsCdt&index=10)
```ruby
insns = RubyVM::InstructionSequence.of method(:foo)
puts insns.disasm
```

pretty serious talk, very low level, probably only really necessary if your app is dying, and only then if you've done performance tuning. Realistically in a rails app, that'll mean N+1 queries and a few indexes before you need to do more work ;)


### [Mountain West Ruby 2016 - Ruby is For Fun and Robots by Michael Ries](https://www.youtube.com/watch?v=kdIkSv1Gulk&list=PLE7tQUdRKcybjaXiRW_mjOuw1JGrWsCdt&index=3)
Very cool. Good honesty in talking about the parts of the project he was interested in. Libraries for Google Cloud Vision and iRobot create 2, spyglass gem for doing the computer vision stuff!? (not just sending it to google cloud vision?), and then elixir for sending the bytes over the wire as it's good for encoding and decoding at that kinda level.


### [Mountain West Ruby 2016 - Sharpening The Axe: Self-Teaching For Developers Aja Hammerly](https://www.youtube.com/watch?v=3Ee1WYl51TM&list=PLE7tQUdRKcybjaXiRW_mjOuw1JGrWsCdt&index=7)
Good talk, I like the idea of the pre-meetup study group. Good to look at online courses (actually finish cs50?). Good points on scanning text & practising to put content into memory. Also go towards the hard stuff (not like I often to just increasing a little at a time)


### [Ben Orenstein - Write code faster: expert-level vim (Railsberry 2012)](https://www.youtube.com/watch?v=SkdrYWhh-8s)
Excellent as ever from Ben. Definitely aimed at intermediate users, but talks about vimtutor, points to the user-manual (brilliant), suggests Practical Vim book (which is great). Makes me want to look at his vimrc now and get a little more serious about creating my own leader mappings.

