get-date "12/12/2024 14:34" -format G
#result 12/12/2024 14:34:00

get-date "12/12/2024 14:34" -format g
#result 12/12/2024 14:34

get-date "12/12/2024 14:34" -format u
#result 2024-12-12 14:34:00Z


get-date "12/12/2024 14:34" -format U
#result quinta-feira, 12 de dezembro de 2024 17:34:00

get-date "12/12/2024 14:34" -uformat "%y_%m_%d"
#result 24_12_12

$a = "12/12/2024 2:15PM"
Get-date $a
#result quinta-feira, 12 de dezembro de 2024 14:15:00

$b = get-date -Year 2024 -Month 12 -Date 31
$b
#result domingo, 1 de dezembro de 2024 00:00:00

$a.AddDays(45)
$b.AddHours(5)
$b.AddMonths(-5)

$b.IsDaylightSavingTime()
$b.ToLongDateString()