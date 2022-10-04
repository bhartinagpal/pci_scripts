
IDS="^root|^bin|^daemon|^adm|^lp|^sync|^shutdown|^halt|^mail|^news|^uucp|^operator|^games|^gopher|^ftp|^nobody|^rpm|^vcsa|^dbus|^ntp|^canna|^nscd|^rpc|^postfix|^mailman|^named|^amanda|^postgres|^exim|^sshd|^rpcuser|^nsfnobody|^pvm|^apache|^xfs|^gdm|^htt|^mysql|^webalizer|^mailnull|^smmsp|^squid|^ldap|^netdump|^pcap|^radiusd|^radvd|^quagga|^wnn|^dovecot|^chrony"
cd ~
export TERM=cygwin
/usr/bin/clear
hostname
date
echo $IDS
grep -wE $IDS /etc/passwd
