#! /bin/sh
#moitrijer

apt install libpam-ldapd -y

sudo pam-auth-update

dpkg-reconfigure nslcd

getent.ldap group

getent.ldap passwd|tail -6

su - moitrijer
