# format-table

Get-Process p* |Select-Object name, id, ws, vm, path |Format-Table 


<# format-table common parameters
-autosize 
-HideTableHeaders
-wrap
-Groupby (property)
#> 


# format table using group-by example
Get-ChildItem -file |Sort-Object Extension | Format-Table -GroupBy Extension


<# Before use wrap parameter, order the columns.
Put the long column in the right side ofn the table #>

# Creating a column
get-process -id $pid |Format-Table ID,WS,
@{label="Runtime";Align="Right";Expression={New-Timespan -start $_.StartTime -End (Get-date)}}