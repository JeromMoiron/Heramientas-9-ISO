#! /bin/sh
#REM moitrijer

#Llamar al script 00_variables_locales.sh tb se puede con sources ./00_variables.sh
. ./00_variables.sh

#Crear esqueleto empleados, hacemos una comprobacion por si ya existe
text -d $DIR_H_LDAP/empleados || mkdir -p $DIR_H_LDAP/empleados
text -d $DIR_H_LDAP/empleados/directores || mkdir -p $DIR_H_LDAP/empleados/directores
text -d $DIR_H_LDAP/empleados/RecursosHumanos || mkdir -p $DIR_H_LDAP/empleados/RecursosHumanos
text -d $DIR_H_LDAP/empleados/personal || mkdir -p $DIR_H_LDAP/empleados/personal
text -d $DIR_H_LDAP/empleados/personal/administradores || mkdir -p $DIR_H_LDAP/empleados/personal/administradores
text -d $DIR_H_LDAP/empleados/personal/programadores || mkdir -p $DIR_H_LDAP/empleados/personal/programadores

