#!bin/bash
#REM moitrijer

. ./00_variables.sh

cat << EOF > /etc/hosts
127.0.0.1	localhost
$IP	$NOMBRE_COM $NOMBRE_D

# The following lines are desirable for IPv6 capable hosts
::1     localhost ip6-localhost ip6-loopback
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOF

hostnamectl set-hostname $NOMBRE_D
bash

hostname

cat /etc/hosts
