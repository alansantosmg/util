---
tags:
  - tech/windows/solutions
  - tech/windows/windows-server
---
# Uninstall ATP Agent after Demoting a DC

Try running command line setup uninstall from ProgramData\PackageCache folder

Ex. C:\ProgramData\Package Cache\{########-####-####-####-############} [The GUID is different for each machine/install]
"Azure ATP Sensor Setup.exe" /uninstall

### Services
To remove Services leftover from a previous install, run from an elevated prompt:
sc.exe delete aatpsensor
sc.exe delete aatpsensorupdater