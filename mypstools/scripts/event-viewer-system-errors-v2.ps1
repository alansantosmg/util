
# Version 2
$splat = @{Computername = $env:COMPUTERNAME;FilterhashTable =@{}}
$filter = @{Logname="";Level=2,3;StartTime=$(Get-Date).AddDays(-1)}
$logs =  "Application","System"

$logs | ForEach-Object {
    $filter.Logname = $_
    $splat.FilterhashTable = $filter
}
Get-WinEvent @splat