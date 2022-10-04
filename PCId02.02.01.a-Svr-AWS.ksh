OS=$(rpm -q --whatprovides /etc/redhat-release| cut -d- -f4| cut -c1| tail -1)

case $OS in
 5|6) COMMAND="/sbin/chkconfig --list | grep -w on"
        ;;
 7) COMMAND="/usr/sbin/chkconfig --list | grep -w on"
        ;;
 *) echo -e "Not configured to run for OS version $OS on $HN."; exit 1
        ;;
esac

cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
echo $COMMAND; eval $COMMAND
