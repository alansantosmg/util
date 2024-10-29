
# View powershell version host
$Host

# write-host
# write on "console screen" It's not a object that can pipelined
write-host "teste"

# console redirection
Get-process powershell | Out-file ./redirection.txt

# error redirection
Get-process powershell 2> ./error.txt

# error redirection with error variable 
get-process powershell -ErrorVariable ev 
get-process powershell -WarningVariable wv
$ev.exception |out-file ./ev.txt
$wv.exception |out-file ./wv.txt

# verbose redirection 
Get-process powershell 4> ./error.txt
Get-process powershell -verbose *> ./error.txt
