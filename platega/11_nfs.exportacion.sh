#! /bin/sh
#moitrijer

. ./00_variables.sh

apt install nfs-kernel-server -y

echo "/home/$DOMINIO_SINP	$IP/$MASK(rw)" >> /etc/exports

echo "/comun			$IP/$MASK(rw)" >> /etc/exports

service nfs-kernet-server start
service nfs-kernet-server status

exportfs -v
