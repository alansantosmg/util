

# Get stopped automatic startup services - Gui window
# author: alansantosmg - 2023-08-28
Get-Service |
select-object -property Name, Status, StartType, DisplayName | 
where-object {$_*.startType -eq "automatic" -and !($_*.Status -eq "Running")} |
Out-Gridview



# Get stopped automatic startup services - cli list view
# author: alansantosmg - 2023-08-28
Get-Service| 
where-object {$_*.startType -eq "automatic" -and !($_*.Status -eq "Running")} | 
format-list -property Name, Status, StartType, DisplayName



# Get stopped automatic startup services - cli table view
# author: alansantosmg - 2023-08-28
Get-Service| 
where-object {$_*.startType -eq "automatic" -and !($_*.Status -eq "Running")} | 
format-table -property Name, Status, StartType, DisplayName
