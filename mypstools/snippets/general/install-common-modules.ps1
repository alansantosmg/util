Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# Get pre requiste modules
Install-Module AzureAD
Install-Module MsOnline
Install-Module ExchangeOnlineManagement
Install-Module Microsoft.Graph
# Install-Module Microsoft.Graph.Beta
Install-Module Microsoft.Graph.Intune
Install-Module -Name Microsoft.Online.SharePoint.PowerShell
Install-Module -Name MicrosoftTeams

Get-InstalledModule

# Import modules to use on the shell 
Import-Module AzureAD
Import-Module MsOnline
Import-Module ExchangeOnlineManagement

Import-Module "myOtherScript.ps1"