#! /bin/sh
#REM moitrijer
#Crea usuario admin
useradd -u 0 -o -g 0 administrador

passwd administrador

mkdir /home/administrador

usermod --shell /bin/bash --home /home/administrador administrador

chown -R administrador:root /home/administrador

cp /etc/skel/* /home/administrador/
