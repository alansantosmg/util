---
tags:
  - tech/linux/security
  - tech/linux/commands/security
---


# Linux - Security

## Where Sudo Users Activity Are Logged?

/var/log/secure

## Sudoers File Syntax

ruser ALL=(ALL) ALL

user = ruser ALL = All hosts (ALL) = ALL users ALL = No restrictions

This command give to the ruser the full root capabilities.

Example:

AUDIO guest1=/usr/local/bin/myprog

Users of audio group on host guest1 can run the program myprog.

AUDIO guest1=NOPASSWORD : /user/local/bin/myprog

Users of audio group on host guest1 can run the program myprog without provide a password.

### The Wheel Group

%whell ALL = (ALL) ALL

Users on the wheel group, can run commands as root.

This is the default on distros like linux mint, ubuntu desktop and fedora workstation.

> [!Warning] Don’t use this on server distros

## Log as User

1. Get the root: `su -`
2. call su as user: `su - [usename]`

## Generate Passwords (or Random text)

Generate 50 lines of 80 random caracters.

```bash
pwgen 80 50
```