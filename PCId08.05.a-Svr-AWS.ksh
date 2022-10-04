cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
grep -c nologin /etc/passwd
grep -i ^permitroot /etc/ssh/sshd_config
grep -v nologin /etc/passwd
