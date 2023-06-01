'REM moitrijer MoironTrigo,Jerom

'Crear OU=Empleados'
Set objDom=GetObject("LDAP://dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=Empleados")
ObjOU.SetInfo

'Crear OU=directores'
Set objDom=GetObject("LDAP://OU=empleados,dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=directores")
ObjOU.SetInfo

'Crear OU=personal'
Set objDom=GetObject("LDAP://OU=empleados,dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=personal")
ObjOU.SetInfo

'Crear OU=RecursosHumanos'
Set objDom=GetObject("LDAP://OU=empleados,dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=RecursosHumanos")
ObjOU.SetInfo

'Crear OU=Perfiles'
Set objDom=GetObject("LDAP://dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=Perfiles")
ObjOU.SetInfo

'Crear OU=Comun'
Set objDom=GetObject("LDAP://dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=Comun")
ObjOU.SetInfo

'Crear OU=ComunEmpleados'
Set objDom=GetObject("LDAP://dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=ComunEmpleados")
ObjOU.SetInfo

'Crear  mandada en el examen OU=indicecomerce'
Set objDom=GetObject("LDAP://dc=w9pyme09,dc=net")
Set objOU=objDom.Create("OrganizationalUnit","ou=indicecomerce")
WScript.Echo "Las OUs se han creado correctamente."