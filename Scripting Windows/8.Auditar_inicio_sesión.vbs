Set objShell = CreateObject("WScript.Shell")

' Ejecutar comando auditpol /set
objShell.Run "auditpol /set /subcategory:""Inicio de sesión"" /success:enable /failure:enable", 0, True

' Ejecutar comando auditpol /get
objShell.Run "auditpol /get /subcategory:""Inicio de sesión""", 1, True
