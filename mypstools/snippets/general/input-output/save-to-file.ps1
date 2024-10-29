
Get-Process | Out-File -enconding ASCII
Get-Process | Out-File -enconding UTF8

# save to console and to a file (at same time)
Get-Process | tee-object -filepath c:\test1.txt
