#!/bin/bash
#REM moitrijer

. ./00_variables.sh

cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.bak

cat << EOF > /etc/dhcp/dhcpd.conf
option domain-name "$DOMINIO_COM";
option domain-name-servers $DNS;

default-lease-time 600;
max-lease-time 7200;

subnet $RED netmask $MASK {
	range $RANGO1 $RANGO2;
	option routers $GATEW;
}

host uclient02 {
#cambiar MAC por la de la maquina cliente
  hardware ethernet 08:00:27:11:11:11;
  fixed-address $RESER_U02;
  option host-name "$NOMBRE_CLI2";
}
EOF

cp /etc/default/isc-dhcp-server /etc/default/isc-dhcp-server.irf

cat << EOF > /etc/default/isc-dhcp-server
INTERFACESv4="$NOMBRE_T"
INTERFACESv6=""
EOF

cat /etc/default/isc-dhcp-server
