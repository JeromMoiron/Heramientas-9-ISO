'REM moitrijer MoironTrigo,Jerom
'Referencia al equipo local'
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
'Procesos de Windows'
Set colProcessList = objWMIService.ExecQuery("SELECT * FROM Win32_Process")
'Crea una variable que se irá sumando a medida que vaya contando un proceso'
intProcessCount = 0
For Each objProcess in colProcessList
    intProcessCount = intProcessCount + 1
Next

If intProcessCount > 21 Then
    MsgBox "Se han detectado más de 21 procesos activos."
End If
