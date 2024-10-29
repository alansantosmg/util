Get-ChildItem c:\windows -file |
Group-Object -property Extension |
Select-Object -Property Name,Count,
@{Name="size";Expression={$_.group | Measure-Object -property length -sum  | 
    Select-Object -expandproperty sum}} |Sort-Object -Property size -descending |
    Select-Object -first 5
