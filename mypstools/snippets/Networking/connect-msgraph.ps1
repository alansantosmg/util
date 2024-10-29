# Microsoft.Graph

Install-Module Microsoft.graph.Users

import-module Microsoft.graph.users

connect-mgGraph -Scopes 'User.ReadWrite.All'

$EmsSku = Get-MgSubscribedSku -All 

$EmsSku


# Get-MgUser -filter "displayname eq 'alan santos'" | fl *

 Get-Mguser -filter "UserPrincipalName eq 'x-gpc@dannemann-ip.com'"
 Get-Mguser -UserId 'x-gpc@dannemann-ip.com' | Select-Object $_.licenseAssignmentStates

$user = 'x-gpc@dannemann-ip.com'

$user = 'alan.santos@dannemann.com.br'

$userSkuPartNumber = Get-MgUserLicenseDetail -UserId $user | select-object $_.SkuPartNumber

$userLicenses = Get-MgUserLicenseDetail -UserId $user |Select-Object -Property *
$userLicenses

$userSkuPartNumber.licenseAssignmentStates

$user.licenseAssignmentStates

# Set-MgUserLicense -UserId $user -AddLicenses @() -RemoveLicenses @($EmsSku.SkuId)


# help Get-MgUserLicenseDetail  -Detailed

Disconnect-Graph



$allLicenses = Get-MgUserLicenseDetail -UserId $user -Property SkuPartNumber, ServicePlans
$allLicenses | ForEach-Object {
    Write-Host "License:" $_.SkuPartNumber
    $_.ServicePlans | ForEach-Object {$_}
}




Get-MsolGroup -All | Where {$_.Licenses}