# how to get enum values from member
[enum]::GetNames("System.ServiceProcess.ServiceControllerStatus status")

# sort objects
get-service | sort-object -Property DisplayName -descending
get-service s* | Sort-Object  name,  id







