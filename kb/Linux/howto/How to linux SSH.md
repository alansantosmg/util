---
tags:
  - tech/linux/ssh
  - tech/windows/ssh
---

# How to SSH with SSH Key from Windows to Linux


## Windows: Create Ssh-key

```powershell
ssh-keygencp C:\Users\yourUserName\.ssh\id_rsa.pub C:\Users\yourUserName\authorized_keys
```

## Linux: Start Ssh Service

```bash
service ssh status # Start sshd if necessary
mkdir ~/.ssh/ # if it doesn't already exist)
```

## Windows: Transfer Ssh to Linux

```powershell
cd C:\Users\yourUserName\scp authorized_keys login-id@ubuntu-Host-Ip:~/.ssh
```

## Linux: Set Permissions

```bash
chmod 700 ~/.sshchmod 600 ~/.ssh/authorized_keys
```

## Windows: Cleaning and Testing

Test if you can ssh into your ubuntu host without login/pw auth. 
If yes:

```powershell
rm C:\Users\yourUserName\authorized_keyssh user@hostname
```

## References

How to install SSH on fedora linux:

https://linuxconfig.org/how-to-install-start-and-connect-to-ssh-server-on-fedora-linux