OS=$(rpm -q --whatprovides /etc/redhat-release| cut -d- -f4| cut -c1| tail -1)
case $OS in
 5) COMMAND="grep ^authpriv /etc/syslog.conf"
	;;
 6|7) COMMAND="grep ^authpriv /etc/rsyslog.conf"
	;;
esac

cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
ls -la ~root/.sh_history ~root/.sh_histories ~root/.bash_history 2>/dev/null
echo $COMMAND; eval $COMMAND
grep -vE '^#|^$' /etc/audit/audit.rules| grep -E 'write|delete'
