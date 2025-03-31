---
tags:
  - tech/linux/fedora/dnf
  - tech/linux/commands/packages
---

# Linux - DNF Package Manager

status:: tags:: [[tech/cheat_sheet/linux]]

## General Commands

- Show package dependencies list `dnf repoquery --deplist mc`
  
- Install dnf package `dnf install [package-name]`
  
- Verify updates `dnf check-update`
  
- Update and store results in a log file. `dnf -y update | tee ~/update.log`
  
- List recent packages installed `dnf list recent`
  
- List all packages installed `dnf list installed`
  
- List al available packgages `dnf list avaible`

.Remove a package `dnf remove [package name]`

## Groups of Packages

- List groups of packages `dnf grouplist`
- View package’s group `dnf groupinfo "Package group name" | less`
- Install a package group `dnf group install [package-group-name]`

## Kernels

Number of the kernels retained:

File: /etc/dnf/dnf.conf

installonly_limit=3