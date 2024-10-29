
# Set default parameters value for a command
<# $PSDefaultParameterValues is a special environment hashtable.
We could use it to set up default parameters for commands. 
View the example bellow
#>


# Add default parameters
$PSDefaultParameterValues.add("Get-WinEvent:Logname", "System")
$PSDefaultParameterValues.add("Get-WinEvent:MaxEvents",10)
$PSDefaultParameterValues
# Run a commnad without parameters
Get-WinEvent
# set new parameter values
$PSDefaultParameterValues["Get-WinEvent:MaxEvents"] =5
Get-WinEvent
# Disable default parameter values
$PSDefaultParameterValues["Disabled"] = $True

$PSDefaultParameterValues["Disabled"] = $False
Get-WinEvent

# Clear the default parameter values
$PSDefaultParameterValues.Clear()