# List Devices pending reboot

# install modulo with psw running on administrative privileges
install-module -Name PendingReboot

# input servers list text file. 
$computer
$computer = get-content -FilePath .\servers.txt

#Choose the right option according to the necessary detail level:

# basic
Test-PendingReboot -ComputerName $computer -SkipConfigurationManagerClientCheck -SkipPendingFileRenameOperationsCheck | out-file reboot.txt -append

# mid-term
Test-PendingReboot -ComputerName $computer -SkipConfigurationManagerClientCheck -SkipPendingFileRenameOperationsCheck -Detailed | ft |out-file reboot.txt -append

# complete
Test-PendingReboot -ComputerName $computer -Detailed | ft |out-file reboot.txt -append

