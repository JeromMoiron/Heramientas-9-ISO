#REM moitrijer MoironTrigo,Jerom
Clear-Host
Write-Host moitrijer MoironTrigo,Jerom
Write-Host
Get-NetAdapter
New-NetIPAddress -InterfaceIndex 12 -IPAddress 172.30.0.3 -PrefixLength 24 -DefaultGateway 172.30.0.1
Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses 172.30.0.3,8.8.8.8