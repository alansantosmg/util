---
tags:
  - tech/linux/ubuntu
  - tech/linux/solutions
---

```bash
snap list
# remove all package listed
sudo snap remove --purge thunderbird
sudo umount /var/snap/firefox/common/host-hunspell
sudo snap remove --purge firefox
sudo apt remove --autoremove snapd
sudo apt install gedit
sudo -H gedit /etc/apt/preferences.d/nosnap.pref
```