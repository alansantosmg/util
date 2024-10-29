get-process -id $pid |Format-Table ID,WS,
@{label="Runtime";Expression={New-Timespan -start $_.StartTime -End (Get-date)}}