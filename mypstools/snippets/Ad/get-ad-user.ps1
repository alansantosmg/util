
# Powershell - Manipulate users


# AzureAD

# Search user
get-AzureADUser -searchString "Roseane"
Get-AzureADUser -Filter "department eq 'Marketing' and jobtitle eq 'Manager'"
Get-AzureAduser -ObjectID roseane.souza@dannemann.com.br | fl
Get-AzureADUser -ObjectId alexw@lazydev.onmicrosoft.com | Select DisplayName, Jobtitle, Mail, Department
Get-AzureADUser -All $true | Where-Object {$_.DisplayName -like "*vanc*"}
Get-AzureADUser -All $true | Where-Object {$_.jobtitle -ne "Marketing Assistant"} | fl

# AD
Get-AdUser -identity $user -properties *
set-AdUser -identity $user -add @{ProxyAddresses='smtp:scm@dannemann.com.br'}

# Search user - Windowws AD

# Get upn name based on display name
$userName="<display name>"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName
