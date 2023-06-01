'REM moitrijer MoironTrigo,Jerom
'Compartir carpetas'
Dim objWMIService, objNewShare

Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set objNewShare = objWMIService.Get("Win32_Share")

'Compartir carpeta Departamentos'
objNewShare.Create "O:\departamentos", "Departamentos", 0, 100

'Compartir carpeta informatica'
objNewShare.Create "O:\departamentos\informatica", "Informatica", 0, 100

'Compartir carpeta RecursosHumanos'
objNewShare.Create "O:\departamentos\RecursosHumanos", "Recursos Humanos", 0, 100

'Compartir carpeta Ventas'
objNewShare.Create "O:\departamentos\Ventas", "Ventas", 0, 100

'Compartir carpeta perfiles'
objNewShare.Create "P:\perfiles", "Perfiles", 0, 100

'Compartir carpeta Reportes'
objNewShare.Create "S:\Reportes", "Reportes", 0, 100

'Compartir carpeta RecursosHumanos'
objNewShare.Create "E:\Personal", "Personal", 0, 100

'Compartir carpeta empleados'
objNewShare.Create "E:\Personal\empleados", "Empleados", 0, 100

'Compartir carpeta administradores'
objNewShare.Create "E:\administradores", "Administradores", 0, 100

'Compartir carpeta directores'
objNewShare.Create "E:\directores", "Directores", 0, 100

'Compartir carpeta perfiles'
objNewShare.Create "P:\Perfiles", "Perfiles", 0, 100

Set objNewShare = Nothing
Set objWMIService = Nothing
