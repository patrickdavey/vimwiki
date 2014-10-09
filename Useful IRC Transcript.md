 <psdavey> so... lets say you have a clients production machine running 1.8.7 (system ruby only)... and you want to go to 1.9.3 (Ubuntu 10.04)... would you tend to A) upgrade the system ruby or B) use rvm / rbenv / chruby ?
 <psdavey> answers on a postcard to #nzruby appreciated ;)
 <kaleworsley> I wouldn't use rvm/rbenv/chruby in production.
 <gwagener> psdavey I would install a version manager because it will make your life so much eaiser going forward and for general use. I generally never ever use system Ruby. #nzrubypostcard
 <kaleworsley> Are you using passenger? Or unicorn?
 <kaleworsley> Or similar?
 <gwagener> Caveat: I don't manage any production systems, I just use Heroku or similar.
 <psdavey> the client is using passenger
 <danielfone> psdavey: I use rvm
 <kaleworsley> psdavey: https://launchpad.net/~brightbox/+archive/ubuntu/ruby-ng :D
 <danielfone> well, I use whatever the client uses
 <danielfone> I have a rvm + passenger setup
 <psdavey> why so strong kale on not using rvm etc.  It's what I've heard I was just wondering about the reasons (it seems one less moving part, and a major one at that)
 <jon_r> psdavey if using ubuntu, use brightbox's ruby packages
 <kaleworsley> I'd prefer to package ruby myself than install the build dependencies on a prod machine.
 <danielfone> kaleworsley: that's a good point
 <jon_r> you still often need build dependencies due to gems
 <jon_r> I prefer to use packaged rubies because it's more immutable
 <kaleworsley> Yeah, true. But I still prefer to install the minimum.
 <kaleworsley> I've used the brightbox stuff in production for quite some time without any issue.
 <psdavey> noob question here.. but https://launchpad.net/~brightbox/+archive/ubuntu/ruby-ng adds to the apt-get sources right?  So you can then just apt-get install ruby-2.1 or whatever.  You then just nuke the installed 1.8.7 ?
 <psdavey> So "I'd prefer to package ruby myself than install the build dependencies on a prod machine.", the brightbox ppa effectively gives you the binaries does it?  So no build dependencies required?
 <psdavey> (apologies if these are silly / obvious questions, my devops could use some work).
 <danielfone> psdavey: jon_r's point still stands
 <danielfone> even if you can get ruby binaries
 <jon_r> psdavey yep
 <danielfone> you're likely to need build-deps to compile native extensions on gems
 <jon_r> add the source, upgrade the ruby
 <jon_r> You can avoid build dependencies if you stick to a minimal gem set
 <jon_r> it just depends on what you're doing
 <jon_r> I don't know of a way to pre install built gems, vendoring *may* work but only if the system vendoring is the same as prod
 <eMBee> what about building on a stage server and then pushing the resulting binaries to production? aren't there tools for that? would allow to use rvm or what not and still avoid devtools on production
 <jon_r> shrug, I've never seen them and still wouldn't use rvm for that
 <jon_r> I've seen people build their own .deb's to deploy dependencies
 <jon_r> not done it myself tho
 <eMBee> that's another way
 <eMBee> and you are probably right about rvm since the main advantage to allow switching should not be needed on a production server
 <psdavey> obviously we'll be testing the hell out of this (that said, legacy codebase etc.)... however.. the fact that the box itself has quite a bit installed on it (god managing processes etc.) would that influence the use of rvm rather than upgrading system ruby.  My co-worker is more inclined to use rvm as it means if things Go Horribly Wrong it's easier to switch back (which seems like a reasonble argument to me!)
 <danielfone> psdavey: this is exactly the case when I use rvm - other stakeholders on the server
 <psdavey> If it was my own fresh box I would certainly use the Bright Box PPA - definitely seems like the way to go.. I'm just wondering whether the legacy aspect would / should be an influence.
 <eMBee> if there is anything else that depends on the installed ruby?
 <danielfone> one time someone upgraded system ruby on a client server without letting me know
 <danielfone> needless to say, their rails app did not work for long
 <psdavey> right.. it's the one stakeholder (and the one app)...
 <psdavey> God uses ruby eMBee
 <eMBee> better don't meddle in gods affairs
 <psdavey> :)
