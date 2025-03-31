---
tags:
  - tech/linux/virtualbox
---

# How to Set an Ubuntu VirtualBox Lab on Linux



Final lab environment:

After virtual machine is installed some configs are necessary:

## Create a Nat Network

Open Virtualbox Application GUI and go to:

1. File - Preferences - Network
2. add a new nat network
3. Edit the created nat network:
- Enable Network: marked
- Network name: NatNetWork
- Network CIDR: 10.0.2.0/24
- Network options: Support DHCP

## Create a Vbox Network

## Set Hostname

If you want change your host name, set a new one in the hostname file:

`sudo vim /etc/hostname`

## Install Basic Tools

gcc make perl curl

## Install Virtualbox Addittions

```
sudo mount /dev/cdrom /mnt
cd /mnt
sudo ./VBoxLinuxAddittions.run
sudo shutdown -r now

```

## Make New Networking Configs

```
cd /etc/netplan
sudo touch 01-nat-networks.yaml
sudo touch 02-host-only.yaml
sudo vim 01-nat-networks.yaml

```

The 01-nat-networks.yaml file:

```
network:
  ethernets:
    enp0s3:
      dhcp4: true
  version: 2

```

The 02-host-only-yaml file:

```bash
network:        renderer: networkd        version: 2        ethernets:                enp0s8:                        dhcp4: false                        addresses:                        - 192.168.56.100/24                        gateway4: 192.168.1.1                        nameservers:                                addresses: [192.168.1.1, 8.8.8.8]
```

Apply configs:

```bash
sudo netplan applysudo shutdown -r now
```

Edit the hosts file:

1. Set the correct hostname for 127.0.0.1 ip address.
2. Create an entry for the second ip address:
- example: 192.168.56.100 tst01srv

```bash
127.0.0.1 localhost127.0.1.1 tst01srv        

# line changed:
 localhost ip/hostname192.168.56.100 tst01srv   

# line created:
 your ip/hostname192.168.56.1 columbia     

# line created:
 your Vbox Host ip/hostname

# The following lines are desirable for IPv6 capable
 hosts::1
 ip6-localhost ip6-loopbackfe00==0 ip6-localnetff00==0 ip6-mcastprefixff02==1 ip6-allnodesff02==2 ip6-allrouters
```