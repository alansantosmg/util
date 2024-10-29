# Page output - Example
Get-Process |more

# list output - Example
Get-Process | Format-List | more

# html output - Example
Get-Process | ConvertTo-Html |Out-File "process.html"

# csv output - Example
Get-process | Export-CSV "Process.csv"

# gridview output - Example
Get-Process | Out-GridView

# host cmd output - Example
Get-Process | Out-Host

# Null output - Example
Get-Process | Out-Null

# printer output
Get-Process | Out-Printer

# serial string output - Example
Get-Process | Out-String

# File outupt - Example
Get-Process | Out-File -enconding ASCII
Get-Process | Out-File -enconding UTF8

# save to console and to a file (at same time)
Get-Process | tee-object -filepath c:\test1.txt