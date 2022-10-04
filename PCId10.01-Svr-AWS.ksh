OS=$(rpm -q --whatprovides /etc/redhat-release| cut -d- -f4| cut -c1| tail -1)

case $OS in
 5) COMMAND="grep -vE '^#|^$' /etc/syslog.conf"
    COMMAND2="ls -lrt `grep -vE '^#|^$' /etc/syslog.conf| sed 's/|//' | awk '/\// {print $NF}'| sed 's/^-//'| sort -u`"
  ;;
 6|7) COMMAND="grep -vE '^#|^$' /etc/rsyslog.conf"
      COMMAND2="ls -lrt `grep -vE '^#|^$' /etc/rsyslog.conf| sed 's/|//' | awk '/\// {print $NF}'| sed 's/^-//'| sort -u`"
  ;;
esac
cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
echo $COMMAND; eval $COMMAND
echo $COMMAND2; eval $COMMAND2
