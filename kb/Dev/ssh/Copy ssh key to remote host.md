# Copy ssh key to a remote host


## Copy
```bash
ssh-copy-id -i ~/.ssh/mykey user@host
```

## Test
```bash
ssh -i ~/.ssh/mykey user@host
```

- The server might not be configured to accept public key authentication. Make sure [/etc/ssh/sshd_config](https://www.ssh.com/ssh/sshd_config) on the server contains `PubkeyAuthentication yes`. Remember to restart the [sshd](https://www.ssh.com/ssh/sshd/) process on the server.
    
- If trying to login as [root](https://www.ssh.com/iam/user/root), the server might not be configured to allow root logins. Make sure `/etc/sshd_config` includes `PermitRootLogin yes`, `PermitRootLogin prohibit-password`, or `without-password`. If it is set to `forced-commands-only`, the key must be manually configured to use a forced command (see `command=` option in `~/.ssh/authorized_keys`.
    
- Make sure the client allows public key authentication. Check that [/etc/ssh/config](https://www.ssh.com/ssh/config) includes `PubkeyAuthentication yes`.
    
- Try adding `-v` option to the `ssh` command used for the test. Read the output to see what it says about whether the key is tried and what authentication methods the server is willing to accept.
    
- OpenSSH only allows a maximum of five keys to be tried authomatically. If you have more keys, you must specify which key to use using the `-i` option to `ssh`.