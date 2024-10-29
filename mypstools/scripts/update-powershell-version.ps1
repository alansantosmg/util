# Instalar versão mais nova do power shell via linha de comando

Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1) } -UseMSI"

# Verificar versão do powershell
$PsVersionTable


# Updates the local help files (run as admin)
Update-help