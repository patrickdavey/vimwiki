### 0005 extracting domain objects
He turns a call to grouping screencasts by month into a separate catalog  
class.

Interesting things - he requires 'lib/catalog' in the controller,  
he is not using autoloading.. which is interesting. He also creates a  
struct (rather than using an object) when it's just a blob of attributes  
he wants to store. I'm still not super loving the way he stubs everything  
out. I can see it makes things fast etc. (no database), but I'd still  
like to see one spec which is actually driving the main interaction (rendering  
HTML) so that we can see that the individual pieces still drive the main  
behaviour. He may actually be doing that though.

I also want to see how  
he uses his <leader>r "inline variable" refactoring. I'm not sure if that's  
custom Gary code, or if it's from the vim-refactorings ?! plugin. Time  
will tell. Or just LearnVimScriptTheHardWay...  


### 0003 building rspec from scratch
Nice little episode, introduces instance_eval and makes me want to find  
out exactly how == is called (no dot required). I think it's just ruby  
sugar but I want to find out.  


### 0004 source code history integrity
Another quality DAS. Introduction to the reflog, makes me want to steal  
his pretty git log alias, and then a way to use the rev-list to iterate  
over entries and do things. e.g.
```bash
git rev-list --reverse master  
| while read rev; do git checkout $rev; git clean -df; rake; done; git  
checkout master
```  


### [Hello World - Machine Learning Recipes #1](https://www.youtube.com/watch?v=cKxRvEZd3Mw)
scikit learn and tensor flow libraries.

Really nice short little introduction  
to ML which really makes me want to learn more about it.  I need to come  
up with a small project I think :)  


### [Mountain West Ruby 2016 - How Are Method Calls Formed? by Aaron Patterson](https://www.youtube.com/watch?v=6Dkjus07d9Y&list=PLE7tQUdRKcybjaXiRW_mjOuw1JGrWsCdt&index=10)
```ruby
insns = RubyVM::InstructionSequence.of method(:foo)
puts insns.disasm  
```

pretty serious talk, very low level, probably only really necessary  
if your app is dying, and only then if you've done performance tuning.  
Realistically in a rails app, that'll mean N+1 queries and a few indexes  
before you need to do more work ;)  


### [Mountain West Ruby 2016 - Ruby is For Fun and Robots by Michael Ries](https://www.youtube.com/watch?v=kdIkSv1Gulk&list=PLE7tQUdRKcybjaXiRW_mjOuw1JGrWsCdt&index=3)
Very cool. Good honesty in talking about the parts of the project he was  
interested in. Libraries for Google Cloud Vision and iRobot create 2,  
spyglass gem for doing the computer vision stuff!? (not just sending it  
to google cloud vision?), and then elixir for sending the bytes over the  
wire as it's good for encoding and decoding at that kinda level.  


### [Mountain West Ruby 2016 - Sharpening The Axe: Self-Teaching For Developers Aja Hammerly](https://www.youtube.com/watch?v=3Ee1WYl51TM&list=PLE7tQUdRKcybjaXiRW_mjOuw1JGrWsCdt&index=7)
Good talk, I like the idea of the pre-meetup study group. Good to look  
at online courses (actually finish cs50?). Good points on scanning text  
& practising to put content into memory. Also go towards the hard stuff  
(not like I often to just increasing a little at a time)  


### [Ben Orenstein - Write code faster: expert-level vim (Railsberry 2012)](https://www.youtube.com/watch?v=SkdrYWhh-8s)
Excellent as ever from Ben. Definitely aimed at intermediate users, but  
talks about vimtutor, points to the user-manual (brilliant), suggests  
Practical Vim book (which is great). Makes me want to look at his vimrc  
now and get a little more serious about creating my own leader mappings.  

