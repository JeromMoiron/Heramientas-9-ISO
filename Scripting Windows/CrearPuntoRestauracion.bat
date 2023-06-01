if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Este script requiere privilegios de administrador. Ejecútalo como administrador y vuelve a intentarlo."
    Exit
}


$description = "Punto de restauración automático"
$restorePoint = Get-WmiObject -Class Win32_RestorePoint -Namespace "root/default" |
               Where-Object { $_.Description -eq $description }

if (-not $restorePoint) {
    $rpParams = @{
        Description = $description
        RestorePointType = 12  # Tipo de punto de restauración automático
        EventType = 100       # Tipo de evento: creación de punto de restauración
    }

    $result = (Get-WmiObject -Class Win32_ShadowCopy)->CreateRestorePoint($rpParams)
    
    if ($result) {
        Write-Host "Punto de restauración creado exitosamente."
    } else {
        Write-Host "Error al crear el punto de restauración."
    }
} else {
    Write-Host "Ya existe un punto de restauración con la descripción especificada."
}

pause