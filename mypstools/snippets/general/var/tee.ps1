#TEE example
# Tee saves the output from a command to another variable

$svc | select-object Name, status, startType, DisplayName |
sort-object $*.status -descending | 
where-object { $*.Status -eq 'stopped' -and $_.startType -eq 'Manual'} 
| Tee -Variable p
