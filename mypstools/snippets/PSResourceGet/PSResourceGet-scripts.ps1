
# Get-Execution policy
Get-ExecutionPolicy

# Find a script
Find-PSResource -type Script |Select-Object -First 20
Find-PSResource -type Script -name *upTime* |Format-List

# Install script
Install-PSResource Get-WindowsUpTime -TrustRepository -PassThru

# Show where script is installed
$a = Get-PSResource Get-WindowsUpTime
$a.InstalledLocation


# get my env path
$env:Path -split ";"

# Include script installed location into path
$env:Path += ";$($a.InstalledLocation)"

