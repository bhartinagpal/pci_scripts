cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
chkconfig --list | grep -E 'ssh|telnet'; echo; grep -vE '^.*:!|^.*:\*' /etc/shadow
