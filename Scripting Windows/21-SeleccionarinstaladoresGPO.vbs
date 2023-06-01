' moitrijer
' Definir el nombre del grupo de Active Directory que tiene permiso para instalar aplicaciones
Dim strGroupName
strGroupName = "g-administradores"

' Crear el objeto de grupo de Active Directory
Set objGroup = GetObject("LDAP://CN=" & strGroupName & ",CN=Users,DC=miDominio,DC=com")

' Obtener el nombre de usuario del usuario actual
Set objNetwork = CreateObject("WScript.Network")
strUserName = objNetwork.UserName

' Comprobar si el usuario pertenece al grupo especificado
If objGroup.IsMember("LDAP://CN=" & strUserName & ",CN=Users,DC=miDominio,DC=com") Then
  ' El usuario pertenece al grupo, permitir la instalaci�n de aplicaciones
  WScript.Echo "El usuario " & strUserName & " tiene permiso para instalar aplicaciones."
Else
  ' El usuario no pertenece al grupo, impedir la instalaci�n de aplicaciones
  WScript.Echo "El usuario " & strUserName & " no tiene permiso para instalar aplicaciones."
  MsgBox "Lo siento, no tienes permiso para instalar aplicaciones en este equipo.", vbCritical, "Instalaci�n de aplicaciones no permitida"
  WScript.Quit
End If
