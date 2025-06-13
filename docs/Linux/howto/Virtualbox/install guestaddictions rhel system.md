
# Install virtualbox guestadditions on RHEL dists

```bash
sudo dnf groupinstall "Development Tools"
sudo dnf install kernel-devel elfutils-libelf-devel
sudo ./VBoxLinuxAdditions.run
```

## Refs
https://forums.virtualbox.org/viewtopic.php?t=112867