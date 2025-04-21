---
tags:
  - tech/windows/onedrive
  - tech/windows/solutions
  - tech/windows/windows-server
---

# Disable OneSync Service

The Sync Host OneSyncSvc service was not started correctly and caused error in the Server Manager.

You wanted to disable this service. However you got the “The parameter is incorrect” error message when disabling it.

1. open regedit
2. locate the key: 

`Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc`

3. Change `start` value from 2 to 4 (disabled). 
4. Restart the server. 