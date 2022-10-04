cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
grep -vE '^#|^$' /etc/pam.d/system-auth
