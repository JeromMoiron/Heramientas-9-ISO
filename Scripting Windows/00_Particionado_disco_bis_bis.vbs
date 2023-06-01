' REM moitrijer, MoironTrigo,Jerom
Dim shell
Set shell = WScript.CreateObject("WScript.Shell")

shell.run "cmd /c cls"
WScript.Sleep 1000

WScript.Echo "moitrijer MorionTrigo,Jerom"

Dim diskpart, result

Set diskpart = CreateObject("WScript.Shell")

' Crear archivo de script para Diskpart
Set scriptFile = CreateObject("Scripting.FileSystemObject").CreateTextFile("diskpart.txt", True)
scriptFile.WriteLine("select disk 1")
scriptFile.WriteLine("create partition primary size=1000")
scriptFile.WriteLine("assign letter=S")
scriptFile.WriteLine("format fs=ntfs label=Comun quick")
scriptFile.WriteLine("create partition primary size=1000")
scriptFile.WriteLine("assign letter=E")
scriptFile.WriteLine("format fs=ntfs label=Empleados quick")
scriptFile.WriteLine("create partition primary size=1000")
scriptFile.WriteLine("assign letter=O")
scriptFile.WriteLine("format fs=ntfs label=ComunEmpleados quick")
scriptFile.WriteLine("create partition primary size=1000")
scriptFile.WriteLine("assign letter=P")
scriptFile.WriteLine("format fs=ntfs label=Perfiles quick")
scriptFile.Close

' Ejecutar Diskpart
result = diskpart.Run("diskpart /s diskpart.txt", 0, True)

WScript.Echo "Las particiones se han creado correctamente."