#! /bin/sh
#REM moitrijer

apt install ssh -y

echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

service ssh restart
