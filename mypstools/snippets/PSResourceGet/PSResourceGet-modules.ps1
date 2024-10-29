

<# 
    PSRESOURCEGET
    . How to install and use modules from Repositories

#>

# Module Discovery 
Find-PsResource PSScriptTools # by name
Find-PSResource PSScript* Select-Object Name, Version, Description  # Wildcards
Find-PSResource -Tag vpn -Type Module |select-object Name, Version, Description |sort-object -Property PublishDate -Descending # by tags
Find-PSResource -CommandName Get-AdSumary 


# Get module details like Powershell Gallery website.
Find-PSResource ADReportingTools | Select-Object *

# Install PSResource  (install-module, import-module)
Install-PSResource PSScriptTools -verbose -PassThru
Install-PSResource PSScriptTools -Scope CurrentUser # only for current user
Install-PSResource PSScriptTools -Scope AllUsers -TrustRepository # Needs elevated permission


# view installed modules examples
Get-module -ListAvailable |more 
get-module PSScriptTools -ListAvailable
Get-PSResource PSSCritpTools -scope Allusers
Get-PSResource -Path c:\tools  


# View module commands 
Get-command -module PSScriptTools




# Default only searchs Current user scope
Update-PSResource PSScriptTools

<# 

If you have a deprecated module installed Do the follow: 
    1. Install the new version with  GetPSResource or  install-module commands
    2. Import the module with  import-module command. 

#>

# Unload module
remove-module PSScriptTools

#Load Module 
import-module PSScriptTools

# Show modules path
$env:PSModulePath -split ";"

Uninstall-PSResource PSScriptTools

#Download module without installing. 
Save-PSResource ADReportingTools -Path $env:HOMEPATH\source\github.com\mypstools






