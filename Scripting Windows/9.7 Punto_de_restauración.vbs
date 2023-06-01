'#Rem moitrijer, MoironTrigo,Jerom
'Script para crear puntos de Restauración
'La ubicación del .vbs debe de ser C:

Set IRP = getobject("winmgmts:\\.\root\default:Systemrestore")
MYRP = IRP.createrestorepoint ("Punto de Restauración automático", 0, 100)