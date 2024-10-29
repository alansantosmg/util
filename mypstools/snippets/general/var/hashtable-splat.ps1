

# Hastable splat example

# Without splat
Get-service -name b* -Exclude "bits"

# With splat
# @ is a splat operator
$p = @{
    Name="b*"
    Exclude="bits"}
Get-service @p



# Splat example 2

$splat = @{Computername = $env:COMPUTERNAME;FilterhashTable =@{}}
$filter = @{Logname="";Level=2,3;StartTime=$(Get-Date).AddDays(-1)}
$logs =  "Application","System"

$logs | ForEach-Object {
    $filter.Logname = $_
    $splat.FilterhashTable = $filter
}
Get-WinEvent @splat

