'#Rem moitrijer MoironTrigo,Jerom
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("Ulocal.txt", True)

Set objNetwork = CreateObject("WScript.Network")
strComputer = objNetwork.ComputerName

Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_UserAccount")

For Each objItem in colItems
    If objItem.AccountType = 512 Then ' Verifica si el usuario es local
        objFile.WriteLine(objItem.Name)
    End If
Next

objFile.Close

MsgBox "Usuarios locales guardados en el archivo usuarios.txt."
