It seems to be common advice to deactivate the `root` user on Linux servers such that you can’t log in as root no matter the authentication method (e.g. password, key based, …). AWS EC2 instances use `ubuntu` by default instead of `root`. So my question is, do you follow the advice to begin with? If so, do you deactivate the `ubuntu` user as well? What other countermeasures do you take to secure `root` like accounts?

nickmalcolm [10:53 AM] 
It’s worth noting that ubuntu isn’t root, but that ubuntu can sudo to become root.

[10:53] 
I hadn’t actually considered why though - I figured it was just a bit of obfuscation / another ACL layer to go through, opportunity to catch baddies, log baddies, etc

ur5us
[10:56 AM] 
yes, `ubuntu` is not `root` but `sudo`-ing doesn’t require you to type a password

[10:56] 
AFAIK, yes, originally it’s just an obfuscation pattern hence why I question its usefulness

terrcin [10:59 AM] 
could change it to require a password

td512
[10:59 AM] 
@ur5us my usual process:
- Log in to `ubuntu`
- Change `root`'s password
- Log in as `root`
- Terminate `ubuntu`
- Add my (16384-bit) SSH-key to `root`
- Change the `root`'s password to a random 128 character password
- Edit `/etc/ssh/sshd_config` to suit (and restart sshd)
- Update the OS
- Reboot the machine
- Install KernelCare
- Change shell to mksh
- Install packages I need
- Create new passwordless user and add my (8192-bit) key to it
- Run anything I need to as said passwordless user

terrcin [11:00 AM] 
that's typically what I've done in the past. no root login, have a different account for login that can sudo, but with a password

[11:00] 
I've noticed that when using other services that set up stuff for me that you can shell in with root, but the account you do use has sudo without password.

td512
[11:02 AM] 
@terrcin that would be security by design. Launch as root to bind to a port less than 1024 and drop all privs so if the service gets hacked, it only affects said service :stuck_out_tongue:

[11:02] 
unless you're MySQL, in which case you have no good reason for running as root

ur5us
[11:03 AM] 
@td512 so you do get rid of the default `ubuntu` user. I assume you also disallow logging in via `root` user, or?

td512
[11:03 AM] 
oh yeah, and _change the default db password_ or _bind to 127.0.0.1 exclusively_

[11:04] 
@ur5us when I say
> - Edit `/etc/ssh/sshd_config` to suit (and restart sshd)
I mean I disallow all password based logins

[11:04] 
so unless you have my keys, you're not getting in

ur5us
[11:07 AM] 
@td512 Sure, I get that part, I mean no password based logins. Until now I usually turn off `root` user logins as well, so I can’t `ssh root@…`. But that can be a PITA if you use Ansible and the Ansible user requires typing the password to become root user every time

td512
[11:08 AM] 
I don't personally. that's a really bad idea if you need to recover something

[11:09] 
my "fix" is to lock sshd down until only I can login as root (edited)

ur5us
[11:09 AM] 
@td512 ok, thanks

rose [11:39 AM] 
uploaded and commented on this image: Screen Shot 2017-04-21 at 10.54.32 AM.png
1 Comment
Is anyone using pry-remote with foreman? When I try and connect to the remote session I’m getting this error

new messages
jonrowe
[11:51 AM] 
Personally I’d never allow someone to ssh in as root, too much accidental privileges, I think you’ll always be able to `sudo su root` but you can limit sudo powers and add password etc to make it harder

danielfone [11:59 AM] 
:point_up: this I think. I always understood the disabling of the root account as privilege separation rather than obfuscation. If I need privilege, I have to `sudo`.

charlespeach
[12:02 PM] 
Same. I always do this in `sshd_config`: `PermitRootLogin no`

jonrowe
[12:10 PM] 
I have password less sudo for my deploy user, but it’s limited to restarting services

ur5us
[1:01 PM] 
@charlespeach so you always type the password to become `sudo` when running Ansible?
