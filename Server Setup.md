* [ ] Use Puppet / Chef for configuration.  Handy puppet info at
  [[http://sysadmincasts.com|sysadmincasts]]
* [ ] Configure hostname
* [ ] Create new user and add to sudoers (how do passwords work?)
* [ ] Create deploy user?
* [ ] Configure ssh
  - [ ] disable root login
  - [ ] configure authorized users (only sudoer user added above and deploy
    user)
  - [ ] configure different ssh port from 22
* [ ] Install Postfix or perhaps Exim?
* [ ] Install Failtoban and
  [Configure as per digital ocean
  guide](https://www.digitalocean.com/community/articles/how-to-protect-ssh-with-fail2ban-on-ubuntu-12-04)
* [ ] Configure iptables?  Don't know much about this
* [ ] Install Apache / Nginx (which is better - does it matter?)
  - [ ] are there post install apache things to harden it up?
* [ ] Install mysql
  - [ ] mysql secure installation?
* [ ] Install postresql
  - [ ] secure installation?
* [ ] Install [Brightbox PPA for ruby](http://brightbox.com/docs/ruby/ubuntu/)
  - [ ] install ruby2, 1.9 (how to switch between them)
* [ ] Install mod-passenger
* [ ] Setup apache virtual-hosts directives for specific sites
* [ ] Find out what a deploy user should be able to do - file system
* [ ] https://www.sparkpost.com/docs/integrations/postfix/
* [ ] https://github.com/malclocke/db-backup
* [ ] https://www.digitalocean.com/community/questions/discussion-about-permissions-for-web-folders

https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-as-a-send-only-smtp-server-on-ubuntu-14-04
 'unattended-upgrades' - ubuntu auto update - look into this
possibly useful links:
http://www.moshebergman.com/2013/04/vagrantchef-soloknife-solo-and-setting-up-users/

http://matteodepalo.github.io/blog/2013/03/07/how-i-migrated-from-heroku-to-digital-ocean-with-chef-and-capistrano/

https://gorails.com/deploy/ubuntu/14.04

http://matschaffer.github.io/knife-solo/

https://www.youtube.com/watch?v=hYt0E84kYUI

[Setting up cloud at cost with cloud66](http://blog.cloud66.com/post/72452631738/how-to-manage-your-cloudatcost-vm-with-cloud66)

tasksel - useful command line installer

http://plusbryan.com/my-first-5-minutes-on-a-server-or-essential-security-for-linux-servers

[[Useful IRC Transcript]]

[[chat with francois]]

[Swap space on DO](https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04)

[[upgrading to ceder-14]]

[[discussion on rubynz]]

https://medium.com/@kirill_shevch/using-chef-and-capistrano-to-deploy-rails-application-on-ubuntu-16-04-fae1dfe0dd12

https://www.digitalocean.com/community/tutorials/how-to-create-a-puppet-module-to-automate-wordpress-installation-on-ubuntu-14-04
