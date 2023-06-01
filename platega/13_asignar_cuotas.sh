#! /bin/sh
#REM moitrijer

getent passwd > usuarios.txt

for USUARIO in $( awk -F: '$3>10000 && $3<60000 {print $1}' usuarios.txt )
do
	if ( groups $USUARIO | grep profes )
	then
		edquota -p profe $USUARIO
	else
		edquota -p alumno $USUARIO
	fi
done

rm usuarios.txt


repquota -a
