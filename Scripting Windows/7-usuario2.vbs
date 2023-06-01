'REM motrijer MoironTrigo,Jerom
'1. Crear el usuario Jerom y añadirlo al grupo g-administradores'

Set objOU = GetObject("LDAP://OU=directores,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Jerom Moiron Trigo")
objUser.Put "sAMAccountName", "moitrijer" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Jerom Moiron Trigo" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\directores\moitrijer" 'Ruta de acceso'
objUser.Put "givenName", "Jerom" 'Nombre usuario'
objUser.Put "sn", "Moiron Trigo" 'Apelidos do usuario'
objUser.Put "mail", "moitrijer@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-directores,OU=directores,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'2. Crear el usuario Paco y añadirlo al grupo g-empleados'

Set objOU = GetObject("LDAP://OU=personal,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Paco perez iglesias")
objUser.Put "sAMAccountName", "paco" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Paco perez iglesias" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\personal\empleados\paco" 'Ruta de acceso'
objUser.Put "givenName", "Paco" 'Nombre usuario'
objUser.Put "sn", "perez iglesias" 'Apelidos do usuario'
objUser.Put "mail", "paco@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-empleados,OU=personal,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'3. Crear el usuario Lorenzo y añadirlo al grupo g-empleados'

Set objOU = GetObject("LDAP://OU=personal,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Lorenzo Lamborghini Fernandez")
objUser.Put "sAMAccountName", "Lorenzo" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Lorenzo Lamborghini Fernandez" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\personal\empleados\Lorenzo" 'Ruta de acceso'
objUser.Put "givenName", "Lorenzo" 'Nombre usuario'
objUser.Put "sn", "Lamborghini Fernandez" 'Apelidos do usuario'
objUser.Put "mail", "Lorenzo@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-empleados,OU=personal,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'4. Crea el usuario Juan y lo mete en el grupo g-administradores'
Set objOU = GetObject("LDAP://OU=personal,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Juan Rodriguez perez")
objUser.Put "sAMAccountName", "Juan" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Juan Rodriguez perez" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\personal\administradores\Juan" 'Ruta de acceso'
objUser.Put "givenName", "Juan" 'Nombre usuario'
objUser.Put "sn", "Rodriguez perez" 'Apelidos do usuario'
objUser.Put "mail", "Juan@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-administradores,OU=personal,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'5. Crea el usuario Pablo y lo mete en el grupo g-RecursosHumanos'
Set objOU = GetObject("LDAP://OU=RecursosHumanos,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Pablo perez picoaga")
objUser.Put "sAMAccountName", "Pablo" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Pablo perez picoaga" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\RecursosHumanos\Pablo" 'Ruta de acceso'
objUser.Put "givenName", "Pablo" 'Nombre usuario'
objUser.Put "sn", "perez picoaga" 'Apelidos do usuario'
objUser.Put "mail", "Pablo@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-RecursosHumanos,OU=RecursosHumanos,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'6. Crea el usuario Jairo y lo mete en RecursosHumanos
Set objOU = GetObject("LDAP://OU=RecursosHumanos,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=jairo mendez perez")
objUser.Put "sAMAccountName", "jairo" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "jairo mendez perez" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\RecursosHumanos\jairo" 'Ruta de acceso'
objUser.Put "givenName", "jairo" 'Nombre usuario'
objUser.Put "sn", "mendez perez" 'Apelidos do usuario'
objUser.Put "mail", "jairo@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-RecursosHumanos,OU=RecursosHumanos,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'7. Crea el usuario Xocas y lo mete en el grupo g-directores'
Set objOU = GetObject("LDAP://OU=directores,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Xocas monster legends")
objUser.Put "sAMAccountName", "xocas" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Xocas monster legends" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\directores\xocas" 'Ruta de acceso'
objUser.Put "givenName", "Xocas" 'Nombre usuario'
objUser.Put "sn", "monster legends" 'Apelidos do usuario'
objUser.Put "mail", "xocas@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-directores,OU=directores,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'8. Crea a los usuarios pedidos en el examen y los mete en un grupo de alto rango'
    'Creación de Xiana89'
Set objOU = GetObject("LDAP://OU=directores,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Xiana89")
objUser.Put "sAMAccountName", "Xiana89" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Xiana89" ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\directores\Xiana89" 'Ruta de acceso'
objUser.Put "givenName", "Xiana89" 'Nombre usuario'
objUser.Put "sn", "X " 'Apelidos do usuario'
objUser.Put "mail", "Xiana89@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-directores,OU=directores,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)
    'Creacion de SU89'
Set objOU = GetObject("LDAP://OU=directores,OU=empleados,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=SU89 ")
objUser.Put "sAMAccountName", "SU89" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "SU89 " ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\directores\SU89" 'Ruta de acceso'
objUser.Put "givenName", "SU89" 'Nombre usuario'
objUser.Put "sn", "S" 'Apelidos do usuario'
objUser.Put "mail", "SU89@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=g-directores,OU=directores,OU=empleados,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

'Creación de usuario "Zoria89"'
Set objOU = GetObject("LDAP://OU=indicecomerce,dc=w9pyme09,dc=net")
Set objUser=objOU.Create("User", "cn=Zoria89 ")
objUser.Put "sAMAccountName", "Zoria89" 'Nombre da cuenta de Usuario'
objUser.Put "displayName", "Zoria89 " ' Nombre completo del usuario.
objUser.Put "profilePath", "E:\Empleados\directores\Zoria89" 'Ruta de acceso'
objUser.Put "givenName", "Zoria89" 'Nombre usuario'
objUser.Put "sn", "Z" 'Apelidos do usuario'
objUser.Put "mail", "Zoria89@w9pyme09.net" 'Correo electrónico'
objUser.SetInfo

Set objGroup = GetObject("LDAP://CN=comerce,OU=indicecomerce,DC=w9pyme09,DC=net")
objGroup.Add(objUser.ADsPath)

WScript.Echo "Los usuario se han creado correctamente."