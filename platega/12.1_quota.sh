#!/bin/sh
#REM moitrijer

. ./00_variables.sh

apt install quota -y

sed -i "s/$DOMINIO_SINP	ext4	defaults/$DOMINIO_SINP	ext4	defaults,usrquota,grpquota/g" /etc/fstab
sed -i "s/comun			ext4	defaults/comun			ext4	defaults,usrquota,grpquota/g" /etc/fstab

mount -o remout /home/$DOMINIO_SINP
mount -o remout /comun


quotaoff -avug
quotacheck -avug
quotaon -av
useradd profe -M -N -u 1001
useradd alumno -M -N -u 1002
passwd -l profe
passwd -l alumno
setquota -u profe 250000 300000 0 0 /home/$DOMINIO_SINP
setquota -u alumno 150000 200000 0 0 /home/$DOMINIO_SINP
