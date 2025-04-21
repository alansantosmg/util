---
tags:
  - tech/linux/ubuntu
  - tech/linux/solutions
---

```bash
sudo apt update
sudo apt upgrade 
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
reboot
sudo apt install gnome-software-plugin-flatpak
```bash