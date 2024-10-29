Return "This is a walk-through demo file"

#using an alias
dir c:\
ls C:\
#the actual command
Get-ChildItem c:\
cls

# PowerShell command alias
gsv

#this is the full command
Get-Service

#how did I know?
Get-Command gsv
Get-Command Get-Service

#region Get-Help
help Get-Service

#or use the alias
help dir
#What commands work with aliases?
Get-Command -Noun alias
cls

# demo-running-commands.ps1