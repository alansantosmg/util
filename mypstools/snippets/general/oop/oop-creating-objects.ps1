

# Create objects from HashTable
$ho = [ordered]@{First=100;Second=200;"My Test"=300}
$x = New-Object -TypeName PSObject -Property $ho
$x |get-member



# Create a object from hashtable  - Example 2
$obj = [PSCustomObject]@{
    Name = $env:username
    Computername = $env:COMPUTERNAME
    Version = $PSVersionTable.PSVersion
    Luckynumber = get-random -minimum 10 -maximum 100
    pid = $PID
    SubObj = [PSCustomObject]@{
        Subname = "sub"
        "Subname 2" = "zero"
    }
}

$obj
$obj.SubObj."Subname 2"






