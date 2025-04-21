---
tags:
  - tech/windows/active-directory
---

Open and run the command prompt as admin on your domain controller. Enter the command: 

```cmd
netdom query fsmo 
```

The output will show all of the FSMO roles and which domain controller holds them
