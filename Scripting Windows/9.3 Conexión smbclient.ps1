#REM moitrijer09 MoirónTrigo,Jerom
#Este script comparte las carpetas mediante smbclient.
$cred = Get-Credential
New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\server\sharedfolder" -Credential $cred
