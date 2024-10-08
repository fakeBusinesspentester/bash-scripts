#!/bin/bash

Set up ubuntu 24 server


TO DO: 
- Add cron job to automatically update and upgrade
- Enter in username password for sudo

my_password='lkj579*tVVV'                  # SET PASSWORD

echo "$my_password" | sudo -S su        # INVOKE sudo WITH PASSWORD
#enter in username and password
apt get update
apt get upgrade

ufw status
ufw default allow outgoing
ufw default deny incoming
grep IPV6 /etc/default/ufw
ufw allow ssh
ufw allow 80/tcp 
ufw allow 443/tcp
#You can limit ssh port access to combat bots as follows too:
ufw limit ssh
ufw enable
ufw status

apt get install net-tools
apt install nodejs
node -v
apt install npm

#To uninstall Node.js installed via APT, you can use the command `sudo apt remove nodejs`. If installed via NVM, use `nvm uninstall ` to remove a specific version.

exit

https://linuxconfig.org/how-to-install-node-js-on-ubuntu-24-04

https://www.cyberciti.biz/faq/how-to-set-up-ufw-firewall-on-ubuntu-24-04-lts-in-5-minutes/
