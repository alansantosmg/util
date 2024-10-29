
# Creating Custom properties 

Get-ChildItem -path c:\users\alans -file -recurse |
Select-Object -property FullName,Name,LastWriteTime,
@{Name = "Size"; Expression = {$_.lenght}}
@{Name = "Audit"; Expression = {(get-date -format g)}}|
Export-Csv c:\users\alans\Documents.csv