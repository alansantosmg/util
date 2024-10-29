
<# 
. Block-Unblock users
. Author: Alan Santos
. Updated: 2024-02-29
. Desc: Block or unblock users on AzureAD / Microsoft 365
#>


###### header
Clear-Host
Write-host "============================================================="
Write-host "  Bloquear/Desbloquear usuario no Entra (AD)/Microsoft 365"
Write-host "============================================================="
Write-host
write-host "ATENCAO: Este script depende de conexao com a internet." 
Write-host "Certifique-se que a conexao esteja ativa durante a execucao."


###### imports
try {    
    
    # install modules
    if (!(Get-InstalledModule AzureAD)){
        write-host "Aguarde carregamento do modulo..."
        Install-Module AzureAD -force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
    }

    if (!(Get-InstalledModule MsOnline)){
        write-host "Aguarde carregamento dos modulo..."
        Install-Module MsOnline -force -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
    }  
    
    # import modules
    if(!(Get-Module AzureAd)){
        Import-Module AzureAD -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
    }

    if(!(Get-Module MsOnline)){
        Import-Module MsOnline -ErrorAction SilentlyContinue -WarningAction SilentlyContinue
    }   
}
catch {
    write-host
    write-host "Finalizando: Modulo nao carregado ou conexao nao realizada."
    write-host
    exit
}


###### credencial
$cred = Get-Credential


###### connections
try {    
    # connect to services
    Connect-AzureAD -Credential $cred -ErrorAction SilentlyContinue
    Connect-MsolService -Credential $cred -ErrorAction SilentlyContinue
}
catch {
    write-host
    write-host "Finalizando: Credencial invalida ou conexao nao completada."
    write-host
    exit
}


###### Execute
try {
    $user = Read-Host "Entre com UPN (e-mail do usuario)"
    if (-not (Get-AzureADUser -ObjectID $user) ){}

}
catch {
    write-host
    write-host "Finalizando: Conta nao localizada."
    write-host
    exit
}

$option = Read-Host "Escolha (1) Bloquear, (2) Desbloquear"
switch ($option){
    1 {
        # block Azure Account
        set-AzureADUser -ObjectId $user -AccountEnable $false

        # block Microsoft 365 Account
        Set-MsolUser -UserPrincipalName $user  -BlockCredential $true
    }
    2 {

        # Unblock Azure Account
        set-AzureADUser -ObjectId $user -AccountEnable $true

        # Unblock Microsoft 365 Account
        Set-MsolUser -UserPrincipalName $user  -BlockCredential $false
    }
    default {
        write-host
        Write-Host "Opcao diferente de 1 ou 2. Execucao abortada. "
        write-host
        exit

    }
}


###### ending
clear-host
write-host "Resultado:"
write-host
write-host
write-host "Azure AD:"
Get-AzureADUser  -ObjectID $user | Select DisplayName,AccountEnabled
write-host
write-host "Microsoft 365:"
Get-MsolUser -UserPrincipalName $user | Select DisplayName,BlockCredential
Write-Host
Remove-Module AzureAD
Remove-Module MsOnline
Exit
