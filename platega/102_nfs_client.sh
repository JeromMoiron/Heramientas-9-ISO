#! /bin/sh
#REM moitrijer

. ./00_variables.sh

apt update
apt install nfs-common -y

mkdir /home/$DOMINIO_COM
mkdir /media/comun

echo "$IP:/home/$DOMINIO_COM	/home/$DOMINIO_COM	nfs	defaults,_netdev	0	0" >> /etc/fstab

echo "$IP:/comun		/media/comun		nfs	defaults,_netdev	0	0" >> /etc/fstab

mount -a

mount|grep "$IP"

echo "greeter-show-manual-login=true" >> /etc/share/lightdm/lightdm.conf.d/50-ubuntu.conf

init 6

service lightdm status
