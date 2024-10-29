---
tags:
  - tech/windows/powershell
---

## How to Shorten the Powershell Prompt

```powershell
test-path $profile

# if returns false create a new profile: 
New-Item -Path $profile -type File -Force

# Edit the new profile
notepad $profile 

# Add to the new profile: 
function prompt {"PS " + (get-location).drive.name+":\...\"+ $( ( get-item $pwd ).Name ) +">"}

```