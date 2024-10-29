$sb = {
    get-service |
    Where-Object {
        $_.status -eq "running"
    }
}


# Invoke script block or command
& $sb


# Other way - used to run on remote machines
Invoke-command $sb


<# parameters 
    .TIPS
    Parameters are positional
#>
$log = "System"
$Count = 3
$sb = {
    Param([string]$log,[int]$Count)
    Get-WinEvent -log $log -max $count}

$sb



# Call Parameters Example 2 - Powershell way
$sb = {
    Param([string]$log,[int]$Count)
    Get-WinEvent -log $log -max $count}

&$sb system 2



# Call Parameters Example 3 - Using splat
$sb = {
    Param([string]$log,[int]$Count)
    Get-WinEvent -log $log -max $count}

$p = @{log='system';count=5}

&$sb @p



<# Call Parameters - Example  4 #
In this case is mandatory the parameters separated by commas
#> 
$sb = {
    Param([string]$log,[int]$Count)
    Get-WinEvent -log $log -max $count}

    Invoke-Command -ScriptBlock $sb -ArgumentList System,2