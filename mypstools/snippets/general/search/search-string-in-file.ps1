# Search in a file
Get-Content c:\logs\log.txt | select-String "10.0.0.1"

# search all files
Get-ChildItem -Path c:\logs\*.txt -Recurse | select-String -Pattern "servidor x"
