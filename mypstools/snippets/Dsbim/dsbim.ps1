/3 DSBIM Powershell mostly used commands

```powershell

# Get pre requiste modules
Install-Module AzureAD -force
Install-Module MsOnline -force
Install-Module ExchangeOnlineManagement -force
Install-Module Microsoft.Graph -force
Install-Module Microsoft.Graph.Beta -force
Install-Module -Name Microsoft.Online.SharePoint.PowerShell -force
Install-Module -Name MicrosoftTeams - force

# List installed modules
Get-InstalledModule

# Import modules to use on the shell 
Import-Module AzureAD
Import-Module MsOnline
Import-Module ExchangeOnlineManagement

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

$cred = Get-Credential

# Get Azure Ad  Ms 365 commands
Get-Command AzureAD | more
Get-Command MSOnline

# Connections
$cred = Get-Credential

# Azure Connection
Connect-AzureAD -Credential $cred

# M365 Connection
Connect-MsolService -Credential $cred

#Exchange connection
Connect-ExchangeOnline -Credential $cred

#Security and compliance center:
Connect-IPPSSession -Credential $cred  

#Sharepoint connect
$orgName = “dsbim”
Connect-SPOService -Url “https://$orgName-admin.sharepoint.com” -Credential $cred
Get-SPOTenant | Select-Object LegacyAuthProtocolsEnabled, RequireAcceptingAccountMatchInvitedAccount

# Teams connection
Connect-MicrosoftTeams -Credential $cred

# Check sucefull connection
Get-MsolCompanyInformation
Get-MsolUser -userPrincipalName "alan.santos@dannemann.com.br"

# Skype connection
$skypeSession = New-CsOnlineSession -Credential $cred
Import-PSSession -Session $skypeSession

# AzureAD
get-AzureADUser -searchString "Roseane"
Get-AzureADUser -Filter "department eq 'Marketing' and jobtitle eq 'Manager'"
Get-AzureAduser -ObjectID roseane.souza@dannemann.com.br | fl
Get-AzureADUser -ObjectId alexw@lazydev.onmicrosoft.com | Select DisplayName, Jobtitle, Mail, Department
Get-AzureADUser -All $true | Where-Object {$_.DisplayName -like "*vanc*"}
Get-AzureADUser -All $true | Where-Object {$_.jobtitle -ne "Marketing Assistant"} | fl

Get upn name based on display name
$userName="<display name>"
Write-Host (Get-AzureADUser | where {$_.DisplayName -eq $userName}).UserPrincipalName

# Block AzureAccount
set-AzureADUser -ObjectId "daniel.silveira@dannemann.com.br" -AccountEnable $false
Set-MsolUser -UserPrincipalName <sign-in name of user account>  -BlockCredential $true

# Unblock Azure Account
set-AzureADUser -ObjectId "daniel.silveira@dannemann.com.br" -AccountEnable $true
Set-MsolUser -UserPrincipalName <sign-in name of user account>  -BlockCredential $false

# Check bloqued status
Get-AzureADUser  -ObjectID <UPN of user account> | Select DisplayName,AccountEnabled
Get-MsolUser -UserPrincipalName <sign-in name of user account> | Select DisplayName,BlockCredential

# Exchange utils   
# -identity, displayName, userPrincipalName, PrimarySmtpAddress

get-Mailbox -identity alan*
get-Mailbox -identity alan.santos@dannemann.com.br | select-object *
get-MailBox -Anr "alan"

# Exchange calendar permissions
get-MailboxFolderPermission -Identity alan.santos@dannemann.com.br:\Calendário
Set-MailboxFolderPermission -Identity ayla@contoso.com:\Calendar -User ed@contoso.com -AccessRights Editor -SharingPermissionFlags Delegate -SendNotificationToUser $true

Get-InboxRule -mailbox alan.santos@dannemann.com.br
```

[Connect to Exchange Online PowerShell | Microsoft Learn](https://learn.microsoft.com/en-us/powershell/exchange/connect-to-exchange-online-powershell?view=exchange-ps)

[Get AzureADUser - How to Find Azure AD Users with PowerShell (lazyadmin.nl)](https://lazyadmin.nl/powershell/get-azureaduser/)

[Get-Mailbox (ExchangePowerShell) | Microsoft Learn](https://learn.microsoft.com/pt-br/powershell/module/exchange/get-mailbox?view=exchange-ps)