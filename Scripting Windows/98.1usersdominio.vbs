'nindoclor'

'Al ejecutar exportarObjetos_Usuarios.vbs se crea el archivo otros03.txt, que contiene una lista de usuarios y un subconjunto de sus atributos.'

'Variables Globales'

    Dim oContainer
    Dim OutPutFile
    Dim FileSystem

'Inicializar variables globales'

    Set FileSystem = WScript.CreateObject("Scripting.FileSystemObject")
    Set OutPutFile = FileSystem.CreateTextFile("otros03.txt", True) 
    Set oContainer=GetObject("LDAP://OU=Usuarios,DC=iescalquera,DC=local")

'Enumerar Contenido'

    EnumerateUsers oContainer

'Limpiar'

    OutPutFile.Close
    Set FileSystem = Nothing
    Set oContainer = Nothing
    WScript.Echo "Finished"
    WScript.Quit(0)
Sub EnumerateUsers(oCont)
    Dim oUser
    For Each oUser In oCont
        Select Case LCase(oUser.Class)
               Case "user"
                    If Not IsEmpty(oUser.distinguishedName) Then
                       OutPutFile.WriteLine "dn: " & oUser.distinguishedName
                    End If
                    If Not IsEmpty(oUser.name) Then
                       OutPutFile.WriteLine "name: " & oUser.Get ("name")
                    End If
                    If Not IsEmpty(oUser.streetAddress) Then
                       OutPutFile.WriteLine "streetAddress: " & oUser.streetAddress
                    End If
                    If Not IsEmpty(oUser.l) Then
                       OutPutFile.WriteLine "l: " & oUser.l
                    End If
                    If Not IsEmpty(oUser.st) Then
                       OutPutFile.WriteLine "st: " & oUser.st
                    End If
                    If Not IsEmpty(oUser.postalcode) Then
                       OutPutFile.WriteLine "postalcode: " & oUser.postalcode
                    End If
               Case "organizationalunit", "container"
                    EnumerateUsers oUser
        End Select
        OutPutFile.WriteLine
    Next
End Sub