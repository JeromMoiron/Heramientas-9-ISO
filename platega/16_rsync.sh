#! /bin/sh
#REM moitrijer

apt install rsync -y

mkdir carpeta1

mkdir carpeta1/f4.sh carpeta1/f5.sh carpeta1/f6.sh

rsync -azvv carpeta1 carpeta2

nano carpeta1/f4.sh/irfan

rm -R carpeta1/f6.sh

tree carpeta1

sleep 1

rsync -azvv --delete carpeta1 carpeta2