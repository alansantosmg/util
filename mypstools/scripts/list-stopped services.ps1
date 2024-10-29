
# Title View-StoppedService
# Author: Alan Santos
# Last modified: 2023/12/25
# Description: List a computer stopped services

clear-host

# Set target host from list
$Computer = get-content -Path .\hosts.txt


###################################################################
# Set target host from prompt
#
# $Computer = Read-host "Enter the hostname"
#
###################################################################

Invoke-Command -Computername $Computer -Scriptblock {


# Get services information
$StoppedService =  Get-Service  |
where-object { 
    ($_.StartType -eq "Automatic") -and ($_.status -notlike "*Running*") } |
select-object `
Name,
StartType,
Status,
DisplayName
#MachineName,
#PSComputerName

# Add the hostname
hostname 
# Write result to screen
Write-Output $StoppedService | 
Format-Table -AutoSize

}