
# View object methods and properties
"foo" | get-member
$d.GetType()
'foo'.GetType()
'foo'.GetType().Name



[datetime]$d = '1/1/2024'  # create a type of object
$d |Get-Member
$d - (get-date) # Operation needs to be with elements of same type 



# Test object type
$i = '10'
$i -is [int32]  # Result: False
$i -is [string] # True



# The -as operator
$d = '1/1/2024'
$d -is [datetime] # Result False. It's a string.
# using as to use a variable as another type
($d -as [datetime]) - (get-date)



<# .TIP 
        To get a object correct properties, 
        just select a one object and do a get-member    
#>
Get-service winrm | Get-Member
Get-service winrm.status # will not run
[enum]::GetNames("System.ServiceProcess.ServiceControllerStatus")
Get-service winrm |select-object $_.status

