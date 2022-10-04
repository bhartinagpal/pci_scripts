cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
#/usr/sbin/lsof -P| head -1;sudo /usr/sbin/lsof -P | grep LISTEN| sort -u -k1,1
/usr/sbin/lsof -P| head -1;echo $PASS | sudo -S /usr/sbin/lsof -P | grep LISTEN| sort -u -k1,1
echo mypassword | sudo -S command
