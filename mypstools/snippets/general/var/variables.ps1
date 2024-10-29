
# Creating a variable
New-variable -Name ver -Value 1


# A readonly variable
New-Variable -Name user -Value "alan" -Option ReadOnly


# A constant
New-Variable -Name pi -Value 3.14 -Option Constant


# New variable - normal way
$test = 5
$test


# New variable - specific type
[int32]$i = 10
$i
[datetime]$d = "12/31/2024"
$d

# Multiple atribution
$a, $b, $c = Get-service bits, winrm, spooler


#clear variable
Clear-Variable user -Force


# get variable and it's value
Get-Variable user


# Get the variable type
$user.GetType()



