#moitrijer
# Importar el módulo de administración de puntos de restauración
Import-Module "C:\Windows\system32\WindowsPowerShell\v1.0\Modules\SystemRestore\SystemRestore.psd1"

# Crear un punto de restauración
$rp = Get-ComputerRestorePoint
$description = "Punto de restauración automático"

if ($rp -eq $null -or $rp.Description -ne $description) {
    # Crear el punto de restauración
    Checkpoint-Computer -Description $description
    Write-Host "Se ha creado un nuevo punto de restauración."
} else {
    Write-Host "Ya existe un punto de restauración con la descripción especificada."
}
