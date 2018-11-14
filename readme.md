## Requirements
* Virtualbox 4.0.x, 4.1.x, 4.2.x, 4.3.x
* Vagrant >= 1.7.4

## Setup
Hosts file entry: 192.168.56.120    dev.dictionaryfreeapi.com/
Run composer install, it should run on startup but sometimes doesn't work due to github rate limiting.
Run npm install, again it should run on startup but doesn't in some cases.
Requires you to run vagrant plugin install vagrant-bindfs

## Database Info
User: api
PW: 123
DB: dictionary

## Site
http://dev.dictionaryfreeapi.com/