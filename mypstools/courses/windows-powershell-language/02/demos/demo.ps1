# Using PowerShell Variables

Return "This is a demo script file. Open this file in the PowerShell ISE or VS Code."

# Getting Variables
#use a command
Get-Variable

#get variables by name with the $ prefix
#these are a few built-in variables
$PSVersionTable
$pwd
$HOME
$shellid

#this will fail
Get-Variable $home

#use the variable name when using the cmdlet
Get-Variable home

#the variable has properties
Get-Variable PSEdition | Select-Object *

#but you work with the value
$pid
$pid | Get-Member

Get-Process -Id $pid

help about_Variables
cls

