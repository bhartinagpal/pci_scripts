cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
/opt/pbis/bin/config --show RequireMembershipOf
cat /etc/sudoers | grep -v "Defaults" | egrep -v "^[[:space:]]*$|^#"
cat /etc/sudoers.d/* | grep -v "Defaults" | egrep -v "^[[:space:]]*$|^#"
