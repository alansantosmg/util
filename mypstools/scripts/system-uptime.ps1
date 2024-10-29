
# Check system Uptime

$os = Get-CimInstance Win32_OperatingSystem

$h = @{
    Computername =$env:COMPUTERNAME
    Uptime = New-TimeSpan -start $os.LastBootUpTime -end (get-date)
    LastbootDate = $os.LastBootUpTime
}

New-Object -TypeName psobject -Propert $h

$h | Format-Table -AutoSize