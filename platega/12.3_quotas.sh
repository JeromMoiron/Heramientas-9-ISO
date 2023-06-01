#REM moitrijer
#comprobar no servidor
quota

dd if=/dev/zero of=fichero50M bs=50M count=1

dd if=/dev/zero of=fichero200M bs=200M count=1

cp fichero200M fichero200Mbis

repquota -a