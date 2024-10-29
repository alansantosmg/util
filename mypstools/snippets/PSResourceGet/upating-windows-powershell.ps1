
#Update Windows Powershell

[Net.ServicePointManager]::SecurityProtocol = "Tls12"
Install-PackageProvider -Name Nuget -Force
Install-Module -name PowershellGet -AllowClobber -Force
remove-module PowershellGet
import-module PowershellGet
get-module

install-module microsoft.powershell.PSResourceGet
import-module Microsoft.powershell.PSResourceGet
Update-Help Microsoft.PowerShell.PSResourceGet -Force
help Get-PSResourceGet
get-command -module Microsoft.PowerShell.PSResourceGet