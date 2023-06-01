#REM moitrijer MoironTrigo,Jerom
New-GPO -Name "Configurar página de inicio del navegador"
Set-GPRegistryValue -Name "Configurar página de inicio del navegador" -Key "HKLM:\Software\Policies\Microsoft\Internet Explorer\Main" -ValueName "Start Page" -Value "http://edu.xunta.gal" -Type String
