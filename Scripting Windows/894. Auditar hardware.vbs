Set objWMIService = GetObject("winmgmts:\\.\root\CIMV2")

' Obtener información sobre la CPU
Set colProcessors = objWMIService.ExecQuery("SELECT * FROM Win32_Processor")
For Each objProcessor in colProcessors
    WScript.Echo "Procesador: " & objProcessor.Name
Next

' Obtener información sobre la memoria RAM
Set colMemory = objWMIService.ExecQuery("SELECT * FROM Win32_PhysicalMemory")
For Each objMemory in colMemory
    WScript.Echo "Memoria RAM: " & objMemory.Capacity / 1024^3 & " GB"
Next

' Obtener información sobre el disco duro
Set colDisks = objWMIService.ExecQuery("SELECT * FROM Win32_DiskDrive")
For Each objDisk in colDisks
    WScript.Echo "Disco duro: " & objDisk.Caption
Next

' Obtener información sobre la tarjeta de video
Set colVideoControllers = objWMIService.ExecQuery("SELECT * FROM Win32_VideoController")
For Each objVideoController in colVideoControllers
    WScript.Echo "Tarjeta de video: " & objVideoController.Caption
Next
