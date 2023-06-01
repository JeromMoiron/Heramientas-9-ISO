#! /bin/sh
#REN moitrijer

. ./00_variables.sh

cfdisk /dev/sda

mkfs.ext4 -L usuarios /dev/sda1

mkfs.ext4 -L comun /dev/sda2

blkid /dev/sda?

echo "#Primera partición del disco duro nuevo" >> /etc/fstab
echo "/dev/sda1	/home/$DOMINIO_SINP	ext4	defaults	0	0" >> /etc/fstab

echo "#Segundapartición del disco duro nuevo" >> /etc/fstab
echo "/dev/sda2	/comun			ext4	defaults	0	0" >> /etc/fstab

mount -a

cat /etc/fstab

mount|tail -n 2

mkdir /home/$DOMINIO_SINP

mkdir /comun

mount /dev/sda1 /home/$DOMINIO_SINP/

mount /dev/sda2 /comun/

df -h
