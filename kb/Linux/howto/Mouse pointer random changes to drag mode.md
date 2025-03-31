---
tags:
  - tech/linux/ubuntu
  - tech/linux/solutions
---
# Mouse pointer random changes to drag mode

## Solution

```
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "'<Alt>'"
```