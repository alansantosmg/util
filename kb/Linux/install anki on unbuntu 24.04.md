---
tags:
  - tech/linux/anki
---

# How to Install Anki on Ubuntu 24.04 Lts


## Install
1. get the anki package from anki website
2. unzip de package
3. Run de following commands before install:

    ```
    sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0 kernel.apparmor_restrict_unprivileged_userns = 0
    sudo apt install libxcb-xinerama0 libxcb-cursor0 libnss3
    ``` 

4. install the package

## Uninstall

`sudo /usr/local/share/anki/uninstall.sh`