
# List all Aliases
Get-Alias
# List All Alias
Get-Alias | more

# Example - Get a specific command alias
Get-alias -Definition Invoke-History


# Set alias - Example 1
Set-alias Dia Get-Date

# Set alias to exec file - Example 2
Set-alias -Name np -Value C:\windows\notepad.exe

# Other alias cmdlet
Export-alias
Get-Alias
Import-alias
Remove-Alias