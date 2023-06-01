#! /bin/sh
#REM moitrijer

getent passwd|tail -6 >usuarios.txt

for USER in $(awk -F: '$3>=10000 && $3<60000 {print $1":"$6}' usuarios.txt )
do
	NOM_USER=$( echo $USER | awk -F: '{print $1}')
	HOM_USER=$( echo $USER | awk -F: '{print $2}')
	GRU_GLO_USER=$( echo $HOM_USER | awk -F/ '{print $4}')

#Creamos carpeta personal del usuario
	test -d $HOM_USER || mkdir -p $HOM_USER
#Copiamos el contenido skel_ubuntu
	cp -a skel_ubuntu/\. $HOM_USER
	if [ $GRU_GLO_USER = "*" ]
	then
	chown -R $NOM_USER:g-usuarios $HOM_USER
	chmod -R 700 $HOM_USER
else
	GRU_ALUM=$( echo $HOM_USER |awk -F/ '{print $5}')
	chown -R $NOM_USER:g-"$GRU_ALUM"-profes $HOM_USER
	chmod -R 750 $HOM_USER
	fi
done

rm usuarios.txt
