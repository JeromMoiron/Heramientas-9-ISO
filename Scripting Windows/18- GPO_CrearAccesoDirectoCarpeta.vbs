'REM moitrijer MoironTrigo,Jerom'

'GPO Crear Acceso Directo a la carpeta Perfiles'

set WshShell = WScript.CreateObject("WScript.Shell")
set objShell = CreateObject("Shell.Application")


'Nos ubicamos en el Escritorio'
strDesktop = WshShell.SpecialFolders("Desktop")
set objFolder = objShell.NameSpace(strDesktop) 

'Creamos la carpeta'
objFolder.NewFolder "Accesos Directos"

'Creamos el acceso directo'
set oShellLink = WshShell.CreateShortcut(strDesktop & "\Accesos Directos\Perfiles.lnk")
oShellLink.TargetPath = "\\YGM\Perfiles"
oShellLink.WindowStyle = 1
oShellLink.Description = "Acceso Directo a Nombre carpeta compartida en red"
oShellLink.WorkingDirectory = "\\YGM\Perfiles"
oShellLink.Save