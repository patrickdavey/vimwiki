

[8:43 AM] francois: their new free offering allows 18 hours of up time per day

[8:43 AM] patrick: yes

[8:44 AM] patrick: but that's not good enough for an actual website, totally fine for prototyping or your own pet projects.

[8:44 AM] francois: their $7/month plan seems pretty reasonable though.

[8:44 AM] patrick: It would be nice if you could schedule it though.

[8:45 AM] patrick: yes, $7 a month does seem ok for an app.. but then... for just $3 more you can send as much email as you like, have a gig of ram, disk space, etc. etc.

[8:45 AM] patrick: (and a background worker)

[8:45 AM] patrick: it really doesn't make sense to stick around any more I think...

[8:46 AM] francois: true, you really do get a lot for $10/month at DO.

[8:46 AM] patrick: I just need to understand Email a bit more (specifically if I run several apps I don't quite understand where email gets sent from, do you just specify a from header and your spf record per domain points to the right place?)  .. anyway, lots to learn

[8:47 AM] patrick: yes, I'm already paying $110 a year for a site5 website, so I might just move the whole lot to DO.

[8:47 AM] francois: for email I use sendgrid

[8:47 AM] patrick: really?

[8:47 AM] patrick: why?

[8:47 AM] patrick: (once you're running your own box at least)

[8:47 AM] francois: yes, i have a $10/month account with them that gives me something like 40,000 emails per month. So I use that one account on a ton of websites that I run.

[8:47 AM] francois: that way I donât have to worry about email configuration, backup smtp server, etc.

[8:48 AM] patrick: hmmmmm, I will have to do my research :wink:  "Backup smtp server" you say :wink:

[8:48 AM] patrick: these words, they're strange to me.

[8:48 AM] patrick: :smile:

[8:49 AM] patrick: (but seriously, why would you need a backup?  If your smtp server is down you're probably rebooting your machine at that point aren't you?)

[8:49 AM] francois: for incoming email

[8:49 AM] patrick: aaaah,

[8:50 AM] patrick: right - I don't care about incoming.

[8:50 AM] francois: right.

[8:50 AM] francois: youâd just use local sendmail

[8:50 AM] patrick: I have a grandfathered google apps

[8:50 AM] francois: to sent outgoing email?

[8:50 AM] patrick: no, I will use local sendmail (or postfix or exim - not sure yet, but sendmail sounds the trickiest beast)

[8:51 AM] patrick: I use google apps for incoming email.

[8:51 AM] patrick: my mx record points to google.

[8:51 AM] francois: gotcha.

[8:51 AM] patrick: so I can read everything in gmail.

[8:52 AM] francois: that is one area that iâve run into pain with in the past. Sendmail was (might still be) a pain to configure correctly

[8:53 AM] patrick: yeah, I'll have to do an audit and see what to keep.  I might end up just moving snowpool to DO and keeping my site5 for my blog etc... and moving things I _really_ don't care about onto my cloudatcost box.

[8:53 AM] patrick: good times.

[8:53 AM] patrick: yeah, mail is the thing which makes me most nervous.

[8:54 AM] patrick: I mean other things you can recover from fairly easily, but a whole bunch of spam getting out somehow isn't going to do your ratings any favours.

[8:54 AM] francois: or email not getting delivered

[8:54 AM] patrick: yeah, I do like google for that stuff :wink:

[8:55 AM] francois: Iâve encountered that issue with misconfigured sendmail in the pastâ¦where email would stop going out and just get queued up.

[8:55 AM] patrick: oh weird.

[8:55 AM] francois: and cases where other servers didnât like emails from âmy server"

[8:55 AM] patrick: so it had been working but then stopped?

[8:55 AM] francois: yup

[8:55 AM] patrick: that's not cool.

[8:55 AM] patrick: you were using SPF records 'n all that ?

[8:56 AM] patrick: What a pain.. what would make someone not like your server?

[8:56 AM] francois: this goes back a long time (over 5 years ago) ...

[8:56 AM] patrick: right.

[8:56 AM] francois: so i donât recall all the specifics of what it turned out to be.

[8:57 AM] francois: i just recall that I ran into various issues that required investigating and troubleshooting over the period of time that I did it.

[8:57 AM] patrick: how annoying.  At least for me it's really just hobby stuff so it doesn't really matter tooooo much.  But I can see why you'd use sendgrid for your app etc.

[8:57 AM] francois: and when sendgrid came out and offered their free tier (not sure it that is still available??) I jumped on that and removed my problems.

[8:58 AM] francois: iâve since upgraded to a $10/month account once I started using it across all the rails apps that I host. (edited)

[8:59 AM] francois: for webserver I use nginx with passenger

[8:59 AM] francois: passenger works well and allows you to run different apps on differing versions of ruby.

[9:04 AM] patrick: yip, I'm used to apache + passenger, but all the cool kids seem to use nginx.

[9:04 AM] francois: apache + passenger works great too

[9:04 AM] patrick: just a bit more memory intensive?

[9:04 AM] francois: nginx is apparently more performant then apache.

[9:05 AM] francois: but i donât think that would make much diff in reality unless you were running a very busy site.

[9:05 AM] patrick: yes exactly what I was thinking.

[9:05 AM] patrick: ok, might sit down this weekend and spin up a box and try get a rails app onto it and sending email.

[9:05 AM] patrick: That'll give me something to do :wink:

[9:06 AM] patrick: Mind you, could always use google's SMTP for a while too as @paul pointed out a while back (and I'm using that on my raspberry pi - works fine)

[9:06 AM] francois: yup that is also another good free option.

[9:06 AM] patrick: Do you use the brightbox ppa for ruby?

[9:07 AM] patrick: Yeah, it is a good solution, what I don't know is what the cutoff is for google's smtp (edited)

[9:07 AM] francois: I donât know what brightbox ppa is

[9:07 AM] patrick: I mean the situation you don't want is email going into a black hole.

[9:07 AM] patrick: https://launchpad.net/~brightbox/+archive/ubuntu/ruby-ng
Next generation Ubuntu pacakages for Ruby 2.2, 2.1, 2.0 1.9.3 and 1.8 EE. See https://www.brightbox.com/docs/ruby/ubuntu/ for more details. This PPA no longer includes Phusion Passenger packages, and NGINX packages with Passenger support. See https://launchpad.net/~brightbox/+archive/ubuntu/passenger-legacy Discussion list here: https://groups.google.com/forum/#!forum/brightbox-ruby-ubuntu-packaging https://www.brightbox.com

[9:08 AM] patrick: instead of using rvm , rbenv etc.

[9:08 AM] patrick: you use this ppa and install a system ruby

[9:08 AM] patrick: definitely what I plan on doing at the moment.

[9:08 AM] francois: I compiled system ruby (2.2.2) and then I use rvm to manage all the other different rubies i need.

[9:09 AM] patrick: right - seems similar enough then.

[9:09 AM] francois: i just chose rvm because I was already familiar with it.

[9:09 AM] patrick: right - and you have a deployer user (or similar) and you install rvm for that user?

[9:10 AM] francois: correct (deploy user) and rvm is installed for that user.

[9:10 AM] patrick: right.

[9:10 AM] patrick: And security updates, did you install one of the auto updating packages, or how do you manage that process?

[9:11 AM] patrick: or just apt-get update?

[9:11 AM] francois: once a week I do the apt-get update and apt-get upgrade

[9:11 AM] patrick: right.

[9:11 AM] francois: and then I also check security on things that Iâve compiled myself (eg like nginx or passenger)

[9:12 AM] patrick: At the point you install, or you do some kind of system audit?

[9:12 AM] patrick: or you just go through the configuration and turn off things which need turning off.

[9:12 AM] francois: I just checked to make sure there were no surprise opened ports

[9:12 AM] francois: i disable password login and only allow ssh-keys

[9:12 AM] patrick: seems like if you only allow traffic in on 80, 443 and your secret ssh port, disallow password access

[9:13 AM] patrick: yeah exactly.

[9:13 AM] francois: i left ssh on default port, didnât bother changing that.

[9:13 AM] patrick: failtoban?

[9:13 AM] francois: no i havenât installed that.

[9:13 AM] patrick: have you heard of port knocking?

[9:14 AM] patrick: :simple_smile:

[9:14 AM] francois: no i donât know that term

[9:14 AM] patrick: so cool.

[9:14 AM] patrick: You set it up with some sort of pinging sequence (I believe)

[9:14 AM] patrick: and the server will _then_ open up a port.

[9:14 AM] patrick: so cool.,

[9:14 AM] patrick: just like bilbo at the mountain.

[9:14 AM] francois: oh i just read it, iâve seen that used on other peopleâs systemsâ¦but not using anything like that on my server.

[9:15 AM] francois: i use backup gem to handle backups

[9:15 AM] francois: i take db snapshots every hour and send those to s3

[9:15 AM] patrick: right - and system monitoring

[9:15 AM] patrick: just newrelic?

[9:15 AM] francois: along with any user uploaded content that isnât already stored on s3.

[9:15 AM] patrick: or nagios or similar?

[9:15 AM] francois: i use pingdom for system monitoring

[9:15 AM] francois: i use monit to monitor and restart processes

[9:16 AM] patrick: right - that's the one bit I'm not that familiar with (monit)

[9:16 AM] francois: there are other options too like âgod'

[9:16 AM] francois: but again i was already familiar with monit, its been around a looong time.

[9:16 AM] patrick: This is more for if apache or workers crash and you need to restart them?

[9:16 AM] francois: memcached, redis, etc.

[9:16 AM] francois: well, actually not redis

[9:17 AM] francois: actually am just using it for sidekiq on this latest server

[9:17 AM] patrick: I don't suppose you know of a good tutorial for that stuff do you?  Happy to google but if you know of something I'd be keen.

[9:17 AM] francois: for using monit?

[9:17 AM] patrick: yip

[9:18 AM] patrick: this is where I fall down with self hosting, the known unknowns!  Paranoia sets in.

[9:18 AM] francois: offhand noâ¦but when you get to that point feel free to fire any questions my way.

[9:18 AM] patrick: ok thanks.

[9:18 AM] patrick: yeah, I've been meaning to do this for a while, ever since the heroku price changes were flagged.

[9:18 AM] francois: and i use capistrano for deployments

[9:18 AM] patrick: worst comes to the worst I can always high tail it back to heroku.

[9:19 AM] patrick: yes, like capistrano

[9:19 AM] patrick: 2 or 3?

[9:19 AM] francois: 3

[9:19 AM] francois: though Iâm still using 2 for a couple of older projects.

[9:19 AM] francois: but like2have is on cap 3.

[9:19 AM] patrick: right, 2 was more optimised for rails specifically wasn't it?

[9:20 AM] francois: Iâm not sure tbh. 3 was just as easy to make happy with rails.

[9:20 AM] francois: i think the biggest change with 3 in my case was that I needed to add a bunch of require statements in the Capfile itself

[9:20 AM] patrick: oh cool :simple_smile:

[9:20 AM] patrick: right.

[9:20 AM] francois: eg

[9:20 AM] francois: require 'capistrano/deploy'
require 'capistrano/rvm'
require 'capistrano/rails'
require "whenever/capistrano"

[9:21 AM] patrick: that stuff I'm confident there will be good tutorials for.

[9:21 AM] patrick: whenever?  Scheduler is it? (edited)

[9:21 AM] francois: it creates entries in crontab for you
