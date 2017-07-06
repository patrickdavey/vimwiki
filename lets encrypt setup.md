- name: MAINTAIN || Add cron job for 'certbot-auto renew' (if configured).
  cron:
    name: Certbot automatic renewal.
    job: "{{ certbot_dir }}/certbot-auto renew --quiet --pre-hook \"service nginx stop\" --post-hook \"service nginx start\""
    minute: "{{ certbot_auto_renew_minute }}"
    hour: "{{ certbot_auto_renew_hour }}"
    user: "{{ certbot_auto_renew_user }}"
  when: certbot_auto_renew
  
  
and the install bit

[9:22 AM] 
- name: INSTALL || Create certbot directory
  file: path={{ certbot_dir }} state=directory

- name: INSTALL || Download Certbot into configured directory.
  get_url: url={{ certbot_url }} dest="{{ certbot_dir }}/certbot-auto"

- name: INSTALL || Ensure certbot-auto is executable.
  file:
    path: "{{ certbot_dir }}/certbot-auto"
    mode: 0755
    
    
```## DEFAULTS FOR CERTBOT ROLE ##

### INSTALL ###
# URL for binary and location to download to
certbot_url: https://dl.eff.org/certbot-auto
certbot_dir: /opt/certbot

### SETUP ###
# Sites to get SSL certificates for, eg:
# certbot_sites:
#   - 'www.example.co.nz'
#   - 'example.co.nz'
certbot_sites: []

### MAINTAIN ###
# Keeping SSL up to date (CRON)
certbot_auto_renew: true
certbot_auto_renew_user: root
certbot_auto_renew_hour: 3
certbot_auto_renew_minute: 48
```

[9:25 AM] 
@psdavey my setup assumes `certbot-auto --standalone` if you are serving the challenge with nginx instead of the self hosted server it spins up, just adjust the cron from:

`job: "{{ certbot_dir }}/certbot-auto renew --quiet --pre-hook \"service nginx stop\" --post-hook \"service nginx start\"`

to something like:

`job: "{{ certbot_dir }}/certbot-auto renew --quiet`

[9:25 AM] 
I will be moving ours away from standalone soon, as it requires like a few seconds of downtime every 3 months

[9:25 AM] 
(not super ideal..)
as all of my sites are provisioned and deployed from the same playbooks, I set a `ssl_type` variable, as some sites still use a fixed cert from somewhere else:

```- hosts: application
  handlers:
  roles:
    - swap
    - base
    - node
    - { role: ruby, tags: ruby }
    - { role: certbot, when: ssl_type == "dynamic" }
```

[9:28 AM] 
psdavey Wow, lots I had no idea about with SSL… e.g. “challenges” .. no idea how it works!

[9:29 AM] 
charlespeach
(@psdavey the above won’t matter to you using puppet, mainly if someone is using ansible and sees this)

[9:29 AM] 
psdavey Nice. I just hacked my way through puppet, but still, it meant I was up and running on linode very quickly (except for the automated deployment of sites, which, I was too lazy to get working!).

[9:29 AM] 
It’s so nice having it provisioned though..

[9:30 AM] 
charlespeach
Its a good step yeah :slightly_smiling_face:

[9:30 AM] 
psdavey like, when the laptop was knicked, it was a second to login and update the authorized keys for the various users.. it’s just neat.

[9:30 AM] 
charlespeach
if you want to use letsenrypt with nginx, and you have a staging site with `http basic auth` then add this to your nginx config:

```  location /.well-known/acme-challenge/ {
    auth_basic off;
  }
```

[9:31 AM] 
I should probably get back to work haha. I love this stuff
