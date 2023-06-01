'#Rem moitrijer MoironTrigo,Jerom'
Option Explicit

Dim objFSO, objFile, objNetwork, objDomain, objGroup, objUser
Dim strDomain, strOutputFile

' Especifica el nombre de dominio y el archivo de salida
strDomain = "piringalla.net"
strOutputFile = "UGotros.txt"

' Crea los objetos necesarios
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile(strOutputFile, True)
Set objNetwork = CreateObject("WScript.Network")
Set objDomain = GetObject("WinNT://" & strDomain)

' Recorre todos los usuarios del dominio
objDomain.Filter = Array("Group")
For Each objGroup In objDomain
    ' Escribe el nombre de usuario en el archivo de salida
    objFile.WriteLine objGroup.Name
Next

' Cierra el archivo y libera los objetos
objFile.Close
Set objFile = Nothing
Set objFSO = Nothing
Set objNetwork = Nothing
Set objDomain = Nothing
Set objUser = Nothing

WScript.Echo "El script se ha ejecutado correctamente."
