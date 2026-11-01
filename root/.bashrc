#/root/.bashrc 2026_11_01
#/root/.bashrc 2021_06_04

#APT
alias agi="apt-get install"
alias agu="apt-get update"
alias agup="apt-get update && apt-get upgrade -y"

#BACKUP
alias cp="rsync -av"
alias ebak='rsync -av /etc/* "/opt/etc_BAK_$(date +%F_%R)"'
alias abak='rsync -av /etc/apache2/* "/opt/apache_BAK_$(date +%F_%R)"'
alias webak='rsync -av /var/www/html/* "/opt/var-www-html$(date +%F_%R)"'

#APACHE / NGINX
alias acfg="cd /etc/apache2/sites-available"
alias atest="apachectl configtest"
alias are="apachectl restart"
alias aalo="tail -f /var/log/apache2/access.log"
alias aelo="tail -f /var/log/apache2/error.log"
alias nre="service nginx restart"
alias ntest="service nginx configtest"

#MAIL
alias pore="service postfix restart"
alias dore="service dovecot restart"
alias pocfg="vim /etc/postfix/main.cf"
alias docfg="cd /etc/dovecot"

#NETWORK
alias canihazip="curl canihazip.com"
alias p="ping google.de"

#PATHS
alias log="cd /var/log"
alias cde="cd /etc"
alias ansi="cd /etc/ansible"
alias ce="cd /etc"
alias web="cd /var/www/html"
alias ware="systemctl restart wazuh-manager"
alias ocfg="cd /var/ossec/etc"
alias syscfg="vim /etc/syslog-ng/syslog-ng.conf"

#LOGS
alias dlo="tail -f /var/log/dovecot.log"
alias mlo="tail -f /var/log/mail.log"
alias sysl="tail -f /var/log/syslog"
alias h="history |grep"
alias walo="tail -f /var/ossec/logs/ossec.log"



alias ali="vim /root/.bashrc"
# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
HISTSIZE=""
HISTTIMEFORMAT="%d/%m/%y %T "
 export PS1='\[\033[0;36m\]\u@\h:\[\033[0;33m\]HOST2\[\033[1;32m\]\w\[\033[0;31m\]\$\[\033[0m\] '
 umask 022

#COLOR CODES
#33m orange
#34m blue
#36m cyan blue
#91m light red
#94m light blue
#96m light cyan blue (nice)


# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'

 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
