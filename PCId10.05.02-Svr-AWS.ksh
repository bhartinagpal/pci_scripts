OS=$(rpm -q --whatprovides /etc/redhat-release| cut -d- -f4| cut -c1| tail -1)
case $OS in
 5) COMMAND3="ls -l /etc/syslog.conf /etc/sysctl.conf /etc/resolv.conf /etc/fstab /etc/inittab /boot/grub/grub.conf /etc/exports /etc/profile /etc/bashrc"
	;;
 6|7) COMMAND3="ls -l /etc/rsyslog.conf /etc/sysctl.conf /etc/resolv.conf /etc/fstab /etc/inittab /boot/grub/grub.conf /etc/exports /etc/profile /etc/bashrc"
	;;
esac
cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
ls /var/log/audit
tail /var/log/secure
echo $COMMAND3; eval $COMMAND3
