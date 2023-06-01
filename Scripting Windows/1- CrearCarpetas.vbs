'REM moitrijer MoironTrigo,Jerom


Dim folder
Set folder = CreateObject("Scripting.FileSystemObject")
'Crear Carpeta Departamentos'
folder.CreateFolder "O:\departamentos"

'Crear las subcarpetas de  Departamentos'
folder.CreateFolder "O:\departamentos\informatica"
folder.CreateFolder "O:\departamentos\RecursosHumanos"
folder.CreateFolder "O:\departamentos\Ventas"

'Crear carpeta perfiles'
folder.CreateFolder "P:\perfiles"

'Crear carpeta Reportes'
folder.CreateFolder "S:\Reportes"

'Crear carpeta Empleados
folder.CreateFolder "E:\Empleados"

'Crear las subcarpetas de Empleados'
folder.CreateFolder "E:\Empleados\personal"
folder.CreateFolder "E:\Empleados\RecursosHumanos"
folder.CreateFolder "E:\Empleados\directores"

'Crear las subcarpetas de personal'
folder.CreateFolder "E:\Empleados\personal\administradores"
folder.CreateFolder "E:\Empleados\personal\empleados"

'Crear carpeta perfiles
folder.CreateFolder "P:\Perfiles"

