---
tags:
  - tech/linux/rclone/onedrive
  - tech/windows/onedrive
---

# How to Mount and Sync One Drive on Linux


## Requirements

- Install Rclone.
- create a folder to sync (Use the desired onedrive folder as name).

## Command Example

```bash
rclone --vfs-cache-mode full mount onedrive:Documentos/obsidian_vault  ~/
```

> [!important] Always use vfs cache write ou full

---

# References

https://www.guyrutenberg.com/2021/06/25/autostart-rclone-mount-using-systemd/

https://rclone.org/commands/rclone_mount/#file-caching

https://www.linuxuprising.com/2018/07/how-to-mount-onedrive-in-linux-using.html

https://www.guyrutenberg.com/2021/06/25/autostart-rclone-mount-using-systemd/

https://www.jamescoyle.net/how-to/3116-rclone-systemd-startup-mount-script

https://thunderysteak.github.io/rclone-mount-onedrive