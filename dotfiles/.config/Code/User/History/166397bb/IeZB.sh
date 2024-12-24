#!/bin/sh
vbox_path="/usr/bin/"
vm_name="pmtech"
#start_utc=1444176000
start_utc=1708995600

#DO NOT CHANGE ANYTHING BELOW THIS LINE
now_utc_ms=$(($(date +%s)*1000))
dif_utc_ms=$(($(($start_utc * 1000)) - $now_utc_ms))
echo "START UTC:" $(($start_utc * 1000)) " DIF UTC:" $dif_utc_ms "NOW UTC:" $now_utc_ms

cd $vbox_path
VBoxManage setextradata $vm_name "VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled" "0"
VBoxManage setextradata $vm_name "VBoxInternal/TM/TSCTiedToExecution" 1
VBoxManage modifyvm     $vm_name --biossystemtimeoffset $dif_utc_ms
VBoxManage startvm      $vm_name
sleep 5