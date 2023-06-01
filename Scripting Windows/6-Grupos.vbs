'REM moitrijer MoironTrigo,Jerom
On Error Resume Next
Dim objOU, objGroup
'Crear grupos g-directores '
Set objOU = GetObject("LDAP://OU=directores,OU=Empleados,dc=w9pyme09,dc=net")

Set objGroup = objOU.Create("group", "cn=g-directores")
objGroup.Put "groupType", 2
objGroup.SetInfo

'Crear grupos g-RecursosHumanos'
Set objOU = GetObject("LDAP://OU=RecursosHumanos,OU=Empleados,dc=w9pyme09,dc=net")
Set objGroup = objOU.Create("group", "cn=g-RecursosHumanos")
objGroup.Put "groupType", 2
objGroup.SetInfo

'Crear grupos g-administradores e g-empleados'
Set objOU2 = GetObject("LDAP://OU=personal,OU=Empleados,dc=w9pyme09,dc=net")
Set objGroup = objOU2.Create("group", "cn=g-administradores")
objGroup.Put "groupType", 2
objGroup.SetInfo

Set objGroup = objOU2.Create("group", "cn=g-empleados")
objGroup.Put "groupType", 2
objGroup.SetInfo

'Crear grupo comerce'
Set objOU = GetObject("LDAP://OU=indicecomerce,dc=w9pyme09,dc=net")
Set objGroup = objOU.Create("group", "cn=comerce")
objGroup.Put "groupType", 2
objGroup.SetInfo

WScript.Echo "Grupos creados exitosamente."