
Get-PsresourceRepository

Set-PSRepository -Name PsGallery -InstallationPolicy Trusted -PassThru 

# Internal repositories

# Register the repository  (on the server)
Register-PSResourceRepository -Name Dannemann -Uri "\\srv1\CompanyRepository" - Priority 10 -Trusted

# Creating stagging area (on local host)
New-item -path c:\ -name staging -itemType Directory

# Get item from PSGAllery
Save-PSResource -Name PSTeachingTools -PassThru -pathc:\stagging\ -IncludeXml -TrustRepository

# Publish item from staging area to internal repository
Publish-PSResource -Repository Dannemann -Path c:\staging\PSTeachingTools\* -SkipModuleManifestValidate
Install-PSResource PSTeachingTools -Repository Dannemann 

Publish-PSResource -Repository Dannemann -Path c:\staging\winfetch.ps1
Install-PSResource -Repository Dannemann -path c:\winfetch.ps1



