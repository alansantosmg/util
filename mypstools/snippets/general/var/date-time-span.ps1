
$b = "12/12/2024 14:30"
$c = "10/11/2025 12:00"


#Time span
$ts = New-TimeSpan -start $b -end $c
$ts

$ts.Days
$ts.ToString()

# you can use with data variables
$c -$b


