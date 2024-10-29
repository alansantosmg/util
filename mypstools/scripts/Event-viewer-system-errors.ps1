get-WinEvent -FilterHashtable @{Logname='system';level=2} -MaxEvents 100|
Format-list TimeCreated,ProviderName,Id,Message 