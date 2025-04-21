# Linux user account management


## Password management

```bash
# Active root account
sudo passwd

# Log in as user without use the user password
sudo su - <user>

# Log as root
sudo su - 

# Show user account password status
passwd -S <user>

# Lock account
passwd -l <user>
# unlock account
passwd -u <username>


# view password expiration information
sudo chage -l <username>

# force user to change password when does login in
sudo chage -d 0 <username>
```

## Group management

```bash
# list your groups
groups

# list a user groups
groups <username> 

# create or delete groups
groupadd <group name>
groupdel <group name>


# add user to group  (append)
usermod -aG <group_name> <username>
gpasswd -a <username> <groupname>

# remove user from group
gpasswd -d <username> <groupname> 

```

## Account management

```bash
# move home dir from jdoe to jsmith
usermod -d /home/jsmith jdoe -m 

# rename user account from jdoe to jsmith
usermod -l jsmith jdoe

```

## Sudo management

```bash

# give sudo permission to user
sudo usermod -aG sudo <username>
sudo usermod -aG wheel <username>  # non debian dists

# sudo file
# Must be edited using visudo
/etc/sudoers
# sudoers syntax
1. all = terminal permission
2. all = impersonate user
3. all = impersonate others groups
4. all = commands able to be used

charlie ALL=(ALL:ALL) /sbin/reboot, /sbin/shutdown



```