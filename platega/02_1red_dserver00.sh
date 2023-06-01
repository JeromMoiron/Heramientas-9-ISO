#!/bin/sh
#REM moitrijer

. ./00_variables.sh

cat <<EOF> /etc/network/interfaces
auto $NOMBRE_T
iface $NOMBRE_T inet static
	address $IP
	netmask $MASK
	gateway $GATEW
EOF

cat <<EOF> /etc/resolv.conf
nameserver 8.8.8.8
nameserver $DNS
search $DOMINIO_COM
EOF

service networking restart

ip a;ip r; ping $GATEW -c3;ping $IP -c3;cat /etc/resolv.conf
