---
tags: 
- tech/linux/commands
- tech/ssh
- tech/devops/ssh
---


#  Copy files to / from external host

To copy a file from `B` to `A` while logged into `B`:

```bash
scp -P portnumber /path/to/file username@a:/path/to/destination
```

To copy a file from `B` to `A` while logged into `A`:

```bash
scp -P pornumber username@b:/path/to/file /path/to/destination
```

Use -P option if the ssh server use specific ports.
