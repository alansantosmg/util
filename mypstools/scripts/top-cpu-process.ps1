

# Get top 10 CPU process
Get-Process |
Select-Object ID,Name,WS,CPU | 
Sort-Object -Property cpu -Descending  | select-object -first 10