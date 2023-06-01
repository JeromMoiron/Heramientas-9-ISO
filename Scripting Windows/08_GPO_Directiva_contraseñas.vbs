'REM moitrijer MoironTrigo,Jerom
Set objDomain = GetObject("LDAP://dc=w9pyme09,dc=net")

Set objPolicy = objDomain.Get("Default Domain Policy")
Set objQuality = objPolicy.Quality

objQuality.PasswordComplexity = False 'Si pusieramos true necesitaríamos que las contraseñas fueran creadas con mayúsculas, min'
objQuality.MinimumPasswordLength = 6  'Longitud mínima de la contraseña'
objQuality.PasswordHistoryLength = 5 'Historial para no usar las ultima contraseñas'
objQuality.MinimumPasswordAge = 1 'Tiempo mínimo para el próximo cambio de contraseña (1 día)'
objQuality.LockoutBadCount = 5 'Cantidad de veces que puedes introducir la contraseña incorrectamente'
objQuality.LockoutDuration = 30 'Tiempo que el equipo está bloqueado después de fallar la contraseña 5 veces (30 min)'

objPolicy.Quality = objQuality
objPolicy.SetInfo
