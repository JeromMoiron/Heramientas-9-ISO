#! /bin/sh
#REM moitrijer

#Llamar al script
. ./00_variables.sh

#Directorio /empleados
chown root:g-administradores $DIR_H_LDAP/empleados
chmod 750 $DIR_H_LDAP/empleados

#Directorio directores
chown root:g-directores $DIR_H_LDAP/empleados/directores
chmod 750 $DIR_H_LDAP/empleados/directores

#Directorio comun
chown root:g-usuarios $DIR_C
chmod 750 $DIR_C

#Directorio RecursosHumanos
chown root:g-RecursosHumanos $DIR_H_LDAP/empleados/RecursosHumanos
chmod 750 $DIR_H_LDAP/empleados/RecursosHumanos

#Directorio administradores
chown root:g-administradores $DIR_H_LDAP/empleados/persoal/administradores
chmod 750 $DIR_H_LDAP/empleados/persoal/administradores

#Directorio programadores
chown root:g-administradores $DIR_H_LDAP/empleados/personal/programadores
chmod 750 $DIR_H_LDAP/empleados/personal/programadores
