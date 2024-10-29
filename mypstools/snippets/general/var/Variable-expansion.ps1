
<# use double quotes for variable expansion (interpolation)
Don't use single quotes.  #>
$name = "Alan"
Write-host "my name is $name."

# Example 2
$PSEdition
write-host "I am running $PSEdition of Powershell."


# Variable expansion Sub-expression example
$svc = get-service WinRM
$t = Get-date -format T
Write-host "[$t] the $($svc.name) is currently $($svc.status)"
