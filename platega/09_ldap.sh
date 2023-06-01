#!/bin/bash
#REM moitrijer

apt install slapd tree ldap-utils

dpkg-reconfigure slapd

ldapadd -D cn=admin,dc=$DOMINIO_SINP,dc=net -W -f ou.ldif

ldapadd -D cn=admin,dc=$DOMINIO_SINP,dc=net -W -f usuarios.ldif

ldapadd -D cn=admin,dc=$DOMINIO_SINP,dc=net -W -f grupos.ldif

ldapadd -D cn=admin,dc=$DOMINIO_SINP,dc=net -W -f grupos_segundarios.ldif

apt install libpam-ldapd -y

sudo pam-auth-update

dpkg-reconfigure nslcd

getent.slap group
