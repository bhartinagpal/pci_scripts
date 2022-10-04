cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
if [[ -f "/etc/ntp.conf" ]]; then
  FILE=/etc/ntp.conf
else
  FILE=/etc/chrony.conf
fi

ls -l $FILE
