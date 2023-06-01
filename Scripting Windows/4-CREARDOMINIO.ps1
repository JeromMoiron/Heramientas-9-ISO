#REM moitrijer MoironTrigo,Jerom
Clear-Host
Write-Host moitrijer MoironTrigo,Jerom
Write-Host
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainMode "Win2012" -ForestMode "Win2012" -DomainName "w9pyme09.net" -DomainNetbiosName "W9PYME09" -InstallDns:$true -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -LogPath "C:\Windows\NTDS" -SysvolPath "C:\Windows\SYSVOL" -NoRebootOnCompletion:$false -Force:$true