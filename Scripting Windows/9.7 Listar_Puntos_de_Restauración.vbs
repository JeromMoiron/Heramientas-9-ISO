'#REM moitrijer MoironTrigo,Jerom
Dim a, b, c, d, e, f
Set f = CreateObject("Wscript.Shell")
Set a = Wscript.CreateObject("Scripting.FilesystemObject")
Set b = a.CreateTextFile("C:\Listado de Puntos de restauración.txt",true)
If Wscript.Arguments.Named.Exists("Computer") Then
e=Wscript.Arguments.Named.Item("Computer")
Else
e="."
End If
Set c = getobject("winmgmts:\\" & e & "\root\default").InstancesOf ("systemrestore")
For Each d In c
b.writeline "Fecha de creación= " & d.creationtime
b.writeline "Nombre del punto de restauración= " & d.description
b.writeblanklines 1
Next
f.Run "notepad C:\Listado de Puntos de restauración.txt", 1,True
Set a = Nothing
set f = Nothing

'Cando se acabe de ejecutar este script, creará un documento .txt que conterá os puntos de restauración Creados.
