' moitrijer
' Aplica la restricci�n del uso de internet al grupo g-RecursosHumanos

On Error Resume Next

' Define el nombre del grupo a restringir
strGroupName = "g-RecursosHumanos"

' Crea el objeto para acceder a las directivas de grupo
Set objGroupPolicy = CreateObject("Microsoft.GroupPolicy.Object")

' Abre la directiva de grupo local
objGroupPolicy.OpenLocalMachineGPO

' Crea el objeto para acceder a la secci�n de restricciones de usuario
Set objRegistryPolicy = objGroupPolicy.GetRegistryPolicy("HKEY_CURRENT_USER")

' Crea el objeto para acceder a la clave de restricci�n de internet
Set objInternetPolicy = objRegistryPolicy.CreateValue("Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\ProxySettingsPerUser", "ProxySettingsPerUser", REG_DWORD)

' Define el valor de restricci�n para el grupo
If IsInGroup(strGroupName) Then
    ' Restringe el uso de internet
    objInternetPolicy.Value = 1
Else
    ' Permite el uso de internet
    objInternetPolicy.Value = 0
End If

' Guarda la clave de restricci�n
objRegistryPolicy.Save

' Cierra la directiva de grupo local
objGroupPolicy.CloseLocalMachineGPO

' Muestra un mensaje indicando que se ha aplicado la restricci�n
MsgBox "La restricci�n de internet ha sido aplicada correctamente.", vbInformation

On Error Goto 0

' Funci�n para comprobar si un usuario pertenece a un grupo
Function IsInGroup(strGroupName)
    Set objUser = GetObject("WinNT://" & CreateObject("WScript.Network").UserName & ",user")
    For Each objGroup in objUser.Groups
        If objGroup.Name = strGroupName Then
            IsInGroup = True
            Exit Function
        End If
    Next
    IsInGroup = False
End Function
