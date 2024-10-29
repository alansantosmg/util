---
tags:
  - tech/linux/ssh
  - tech/linux/solutions
---

## Edit the sshd_config File to Give Root Access by Ssh

```bash
# /etc/ssh/sshd_config
Port 22
PermitRootLogin yes
PubKeyAuthentication no
PasswordAuthentication yes
UsePAm yes
```