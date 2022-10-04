cd ~
export TERM=cygwin
exec 2> /dev/null
/usr/bin/clear
hostname
date
uname -r; cat /etc/redhat-release
yum updateinfo list sec | head -20
yum updateinfo list security installed | head -20
