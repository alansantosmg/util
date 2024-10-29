
## Unblock and block ad users

# Block AzureAccount
set-AzureADUser -ObjectId "daniel.silveira@dannemann.com.br" -AccountEnable $false

# Block Ad Account
Set-MsolUser -UserPrincipalName <sign-in name of user account>  -BlockCredential $true



# Unblock Azure Account
set-AzureADUser -ObjectId "daniel.silveira@dannemann.com.br" -AccountEnable $true

# Unblock Ad Account
Set-MsolUser -UserPrincipalName <sign-in name of user account>  -BlockCredential $false



# Check bloqued status Azure Ad
Get-AzureADUser  -ObjectID <UPN of user account> | Select DisplayName,AccountEnabled

Check bloqued status AD
Get-MsolUser -UserPrincipalName <sign-in name of user account> | Select DisplayName,BlockCredential
