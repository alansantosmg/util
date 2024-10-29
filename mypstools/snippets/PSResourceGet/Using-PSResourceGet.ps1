<# Using PSResourceGet

.WORKFLOW

    1. Find-PSResource
    2. Install-PSResource
    3. Update-PSResource 
    4. Get-PSResource
    
    5. Uninstall-PSResource


#>

Get-Command -module Microsoft.Powershell.PSResourceGet

 # List repositories
Get-PSRepository

# PSGalery is maintained by microsoft
 
# You can trust the PSGallery
Set-PSResourceRepository -NAme PSGallery -Trusted

# Get installed modules 
Get-InstalledModule

# List modules loaded
get-modules

Get-module -name * -ListAvailable |Select-Object Name,Version
Get-module -name microsoft* -ListAvailable |Select-Object Name,Version

Get-command -module RemoteDesktopManager

# Modules install path
$env:PSModulePath


get-smbshare