# Arrays 

# Create an array
$a = 1..10
$b = "alan","maçã",1


# Create an empty array
$c = @()

# Get element from array index
$b[0]  #result: alan


# Search for a element in the array
$b -contains "alan" # result: true
"alan" -in $b # result: true

# example
$list = "rdpclip","searchapp","spoolsv"
Get-Process | Where-Object {$list -contains $_.name}
Get-Process | Where-Object {$_.name -in $list}



# Add elements to an array
$c += "x","y"


# Show array methods and properties
$a |get-member

#some methods
$a.count 
$a.length 

#check if variable is an array
$a -is [array]
$a.GetType()


# split method
$d = "alan santos"
$d.Split()

$e = "alan.santos.net"
$e.Split(".")

# split operator and regular expressions
$f = "data foo bar 44 Field1 88 Field2 435 Field3"
$g =  $f -split "\s\d{2,}\s"
$g

# join an array
$arr = 2,4,6,8
$joined = -join $arr
$joined




