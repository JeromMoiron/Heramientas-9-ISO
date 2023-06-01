#!/bin/sh
# moitrijer

. ./00_variables.sh

ddns-confgen -a hmac-md5 -z $DOMINIO_COM -r /dev/urandom|head -7|tee /etc/bind/ddns.key

chmod 540 /etc/bind/ddns.key

sed -i "s/ddns-key.$DOMINIO_COM/CHAVE-DDNS/g" /etc/bind/ddns.key
echo CAMBIAR EL NOMBRE DE LA CLAVE CHAVE-DDNS

## CAMBIAR EL NOMBRE DE LA CLAVE A CHAVE-DDNS ##


cat <<EOF> /etc/bind/named.conf.local
include "/etc/bind/ddns.key";

zone "$DOMINIO_COM" {
	type master;
	file "db.$DOMINIO_COM";
	allow-update {key CHAVE-DDNS;};
};

zone "$IP_REVER.in-addr.arpa" {
	type master;
	file "db.$IP_DB";
	allow-update {key CHAVE-DDNS;};
};
EOF

cat <<EOF> /etc/dhcp/dhcpd.conf
option domain-name "$DOMINIO_COM";
option domain-name-servers $DNS;

default-lease-time 600;
max-lease-time 7200;

subnet $RED netmask $MASK {
	range $RANGO1 $RANGO2;
	option routers $GATEW;
}

host $NOMBRE_CLI2 {
#cambiar MAC por la de la maquina cliente
  hardware ethernet 08:00:27:11:11:11;
  fixed-address $RESER_U02;
  option host-name "$NOMBRE_CLI2";
  ddns-hostname "$NOMBRE_CLI2";
}


include "/etc/bind/ddns.key";

zone $DOMINIO_COM {
	primary 127.0.0.1;
	key CHAVE-DDNS;
}

zone $IP_REVER.in-addr.arpa {
	primary 127.0.0.1;
	key CHAVE-DDNS;
}
EOF
