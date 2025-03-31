# Virtualbox kvm error

```
## List if kvm modules are loaded
sudo lsmod |grep kvm

## Unload kvm module
modprobe -r <kvm_module_name>
```

