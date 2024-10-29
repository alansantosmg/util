
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