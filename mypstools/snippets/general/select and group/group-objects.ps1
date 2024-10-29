# group object
get-service | Group-Object -Property StartType


$p = @{
    property = "name","status"
}


$resut = get-service | Select-Object @p
$resut |Format-Table


