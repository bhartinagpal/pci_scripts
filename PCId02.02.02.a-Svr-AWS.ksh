cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
/usr/sbin/lsof -P | awk '/LISTEN/ {print $(NF-1)" "$1}'| awk -F: '{print $2}' | sort -un -k1,1
