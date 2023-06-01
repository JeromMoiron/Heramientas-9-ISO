#! /bin/sh
#REM moitrijer

## Sustituir nombres en OUs ##
sed -i 's/iescalquera/constructores/g' ou.ldif usuarios.ldif

sed -i 's/usuarios/empleados/g' ou.ldif usuarios.ldif

sed -i 's/profes/directores/g' ou.ldif usuarios.ldif

sed -i 's/alumnos/trabajadores/g' ou.ldif usuarios.ldif

sed -i 's/dam1/cons1/g' ou.ldif usuarios.ldif

sed -i 's/dam2/cons2/g' ou.ldif usuarios.ldif

## Sustituir nombres en GRUPOS ##
sed -i 's/iescalquera/constructores/g' grupos.ldif grupos_segundarios.ldif

sed -i 's/g-profes/g-directores/g' grupos.ldif grupos_segundarios.ldif

sed -i 's/g-alum/g-trabajadores/g' grupos.ldif grupos_segundarios.ldif

sed -i 's/g-dam1-profes/g-cons1-directores/g' grupos.ldif grupos_segundarios.ldif

sed -i 's/g-dam2-profes/g-cons2-directores/g' grupos.ldif grupos_segundarios.ldif

sed -i 's/g-dam1-alum/g-cons1-trabajadores/g' grupos.ldif grupos_segundarios.ldif

sed -i 's/g-dam2-alum/g-cons2-trabajadores/g' grupos.ldif grupos_segundarios.ldif

