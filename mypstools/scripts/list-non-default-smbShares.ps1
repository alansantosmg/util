$allowed = 
"default share",
"Remote Admin",
"Remote RPC",
"Remote IPC",
"Administração remota",
"Recurso compartilhado padrão",
"IPC remoto"
$listedShares= Get-SmbShare -CimSession $env:COMPUTERNAME | Where-Object {
    $_.Description -notin $allowed
}

if (!$listedShares){
    write-host "Non default shares not found!" -ForegroundColor Cyan
}else{
    
    $result
}