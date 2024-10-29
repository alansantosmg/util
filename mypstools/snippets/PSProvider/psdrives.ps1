

<# 
    Use the same cmdlets with different Technologies
#>

# Providers
Get-PSProvider

# Drives
Get-PSDrive


# Create new 
New-PSDrive -Name f -PSProvider FileSystem -root C:\users\alan.santos\source\github.com\mypstools
F:

# Remove PS Drive
Remove-PSDrive f

Find-PSResource -type Module -name *license* |select-object name, description


# Variable provider

# Creating var
new-item -path variable: -Name var -Value 10
$var = 100
set-item -pathc variable:\var -Value 200 -PassThru
# view var
Get-item 
Get-variable var |Select-Object name, description
# update var
Set-Variable -name var -Description "This is my var"
# remove var
Remove-Variable var



# alias provider

# view alias
get-alias -name dir | select-object *
get-item Alias:\dir |select-object *
# create alias
new-item -path alias: -Name np -value notepad.exe
set-item -path alias:gd -value get-date -PassThru
new-alias -name np2 -value notepad.exe -description "run notepad" -force -PassThru
# modify alias
set-alias -name np -value notepad.exe -description "run notepad again" -option readonly -force -PassThru | select-object *



# Cert provider
# use tabs to navigate
cd .\\LocalMachine\
dir .\AuthRoot\
Get-ChildItem .\AuthRoot |Select-Object -first 1 -Property * |more
Get-ChildItem .\AuthRoot |Select-Object FriendlyName, Not*,Issuer | Out-gridview 
# install ps script module and run below
get-commandsyntax -name Get-ChildItem -providername certificate 

# view expiringinDays 365
cd .\\LocalMachine\
dir -recurse -ExpiringInDays 365

dir -recurse -DocumentEncryptionCert

dir -recurse -SSLServerAuthentication |
Select-Object @{name="Path";Expression ={Convert-path $_.PsParentPah}}, FriendlyName,Subject

Get-Command -noum certificate
help_about certificate_provider


# Provider registry

# only works local

get-psdrive -Psprovider Registry

New-PSDrive -Name Windows -PsProvider Registry -root HKlM:\software\Microsoft\windows\

get-item '.\Windows Error Reporting\'

get-item '.\Windows Error Reporting\' |gm

get-item '.\Windows Error Reporting\' |Select-Object * 

get-item '.\Windows Error Reporting\' |Select-Object * -ExpandProperty Property

Get-ChildItem | Where-Object {$_.ValueCount -gt 0} |Select-Object PsChildName, SubkeyCount, ValueCount

Get-ItemProperty '.\Windows Error Reporting\'

# Examples

# Example 1
cd hklm:
Get-ChildItem software | more
cd software\microsoft\windows\currentversion\

# Example 2
New-PSDrive -name svc -Psprovider Registry -root HKLM:\SYSTEM\CurrentControlSet\Services
get-item -path .
get-childitem | sort PsChildName | select PsChildName,ValueCount,SubkeyCount,Property |more

get-ChildItem -path .\bits |select ImagePath,Start,@{Name="Name"; Expression={$_.PsChildName}},ObjectName, Type 

Get-ChildItem | 
Where-Object {$_.GetValueNames() -contains "ImagePath"} |
get-itemproperty -name ObjectName,ImagePath,Start,Type,PSChildname -ErrorAction SilentlyContinue|
select-object -first 10 @{Name="name";Expression={$_.PsChildName}},ImagePath,Start,ObjectName,Type

Get-ItemPropertyValue -path '.\winrm' -name RequiredPrivileges
get-itemproperty HKCU:\software\Microsoft\Windows\CurrentVersion\run |select * -excludeproperty PS* | format-list 
get-itemproperty HKCU:\software\Microsoft\Windows\CurrentVersion\run -Name OneDrive