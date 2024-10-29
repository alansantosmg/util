Get-CimInstance Win32_OperatingSystem -computername $env:COMPUTERNAME |
Select-Object Caption,TotalVisibleMemorySize,FreePhysicalMemory,PSComputername |
tee-object -variable os

$os | Select-Object @{
    Name = "Computername";Expression={$_.PSComputername.toupper()}},
    @{Name="OperatingSystem";expression={$_.Caption}},
    @{Name="TotalMemoryGB";Expression={($_.TotalVisibleMemorySize/1mb) -as [int]}},
    @{name="FreeMemoryGB";Expression={[math]::round($_.FreePhysicalMemory/1mb,2)}}

