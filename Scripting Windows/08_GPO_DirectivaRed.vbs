'REM moitrijer MoironTrigo,Jerom
Set objDomain = GetObject("LDAP://ou=Empleados,dc=w9pyme09,dc=net")

Set objPolicy = objDomain.Get("Default Domain Policy")
Set objSecurity = objPolicy.NetworkSecurity

objSecurity.MinimumSessionSecurity = 0
objSecurity.MinimumPasswordLength = 6
objSecurity.RequireLogonToChangePassword = True 'Se establece en Verdadero para requerir que los usuarios inicien sesión antes de cambiar su contraseña.'
objSecurity.MinimumPasswordAge = 1
objSecurity.PasswordHistorySize = 0
objSecurity.LockoutBadCount = 5
objSecurity.LockoutDuration = 30

objPolicy.NetworkSecurity = objSecurity
objPolicy.SetInfo
