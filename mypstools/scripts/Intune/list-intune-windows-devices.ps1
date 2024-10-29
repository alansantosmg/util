# Title Get-Intune-Windows-Devices
# Author: Alan Santos
# Last modified: 2023/12/26
# Description: List windows intune devices

# Prerequistes
# Windows PowerShell 5.1
# Warning: It doesn't works on Powershell 7!

Install-Module PowerShellGet -Force
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module Microsoft.Graph.Intune -Scope AllUsers -Force

# Test Module
Get-Command -Module Microsoft.Graph.Intune

# Import Module
Import-Module Microsoft.Graph.Intune .\Get-Intune-Windows-Devices.ps1

# Connect to MsGraph
Connect-MSGraph

################ Uncomment as you wish ############## 

# Total of intune devices
# (Get-IntuneManagedDevice).Value
# (Get-IntuneManagedDevice | Get-MSGraphAllPages).count

# Total of windows intune devices
# (Get-IntuneManagedDevice -filter "operatingSystem eq 'Windows'" | Get-MSGraphAllPages).count

# List all Windows Devices 
# Get-IntuneManagedDevice -filter "operatingSystem eq 'Windows'" | Get-MSGraphAllPages