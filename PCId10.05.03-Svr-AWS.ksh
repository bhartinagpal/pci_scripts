OS=$(rpm -q --whatprovides /etc/redhat-release| cut -d- -f4| cut -c1| tail -1)

case $OS in
 5) COMMAND="grep -vE '^#|^$' /etc/syslog.conf"
	;;
 6|7) COMMAND="grep -vE '^#|^$' /etc/rsyslog.conf"
	;;
esac

cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
echo $COMMAND; eval $COMMAND
