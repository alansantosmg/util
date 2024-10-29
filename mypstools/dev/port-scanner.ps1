$ports = 22,53,80,445
$server = 'my_server_ip or serverlist or servername'

# Scan all server ports
#$ports = 1..65535

$ports | ForEach-Object {$port = $_; if (Test-NetConnection -ComputerName $server -Port $port -InformationLevel Quiet -WarningAction SilentlyContinue) {"Port $port is open" } else {"Port $port is closed"} }