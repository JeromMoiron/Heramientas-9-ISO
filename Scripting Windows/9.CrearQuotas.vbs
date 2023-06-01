' moitrijer
' Script para establecer cuotas de disco y enviar alertas por correo electronico
' Define la cuota para todos los usuarios en 89MB y avisa cuando se alcanza 6 mb

On Error Resume Next

' Define los valores de cuota y alerta
intQuota = 98 * 1024 * 1024 ' 89MB en bytes
fltThreshold = 5 *1024 *1024 ' Aviso a los 6 mb

' Crea el objeto para acceder al sistema de usuarios
Set objUser = GetObject("WinNT://./Users")

' Recorre todos los usuarios
For Each objItem in objUser
    ' Establece la cuota para el usuario
    Set objDiskQuota = objItem.Quota
    objDiskQuota.EnableQuota = True
    objDiskQuota.QuotaLimit = intQuota
    objDiskQuota.QuotaThreshold = intQuota * fltThreshold
    objDiskQuota.Save

    ' Comprueba si el usuario ha alcanzado el umbral de alerta
    If objDiskQuota.QuotaUsed >= objDiskQuota.QuotaThreshold Then
        ' Env�a un correo electr�nico de alerta al administrador
        strSubject = "Alerta de cuota de disco"
        strBody = "El usuario " & objItem.Name & " ha alcanzado el 90% de su cuota de disco."
        SendEmail "administrador@ejemplo.com", strSubject, strBody
    End If
Next

' Muestra un mensaje indicando que se han establecido las cuotas y alertas
MsgBox "Las cuotas de disco y alertas han sido establecidas correctamente.", vbInformation

On Error Goto 0

' Funci�n para enviar correos electr�nicos
Sub SendEmail(strTo, strSubject, strBody)
    Set objEmail = CreateObject("CDO.Message")
    objEmail.From = "servidor@ejemplo.com"
    objEmail.To = strTo
    objEmail.Subject = strSubject
    objEmail.TextBody = strBody
    objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2
    objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "smtp.ejemplo.com"
    objEmail.Configuration.Fields.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25
    objEmail.Configuration.Fields.Update
    objEmail.Send
End Sub
