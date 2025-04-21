---
tags:
  - tech/windows/gpo
---

## Create GPO

- open group policy: GPMC.msc

## Force GPO Update

- Run the command on the client machine:

```powershell
 gpupdate /force
```

## Get GPO Results

- Gp result via snap-in:  RSOP.MSC
- Gp result via terminal:

```powershell
gpresult /R  ## result
gpresult /H  ## save result as a html document. 
gpresult /S  ## specify a computer name
gpresult /U:username /P:password  ## username and pwd
gpresult /Scope:  ## user o computer

## Examples: 

gpresult /R /H /S:myComputer /Scope:Computer /U:administrator /P:1234 
gpresult /R
```