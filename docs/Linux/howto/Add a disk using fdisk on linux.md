# How to add a disk using fdisk (without LVM)

## List disk

```bash

# list disks and partitions
sudo fdisk -l 

# Type before attach the disk
# observe de screen after disk attached
dmesg --follow

# Use lsblk to find a new attached 
#disk without root privileges
lsblk

```

## Disk setup

```bash

# 1. Start setup
fdisk /dev/sdb

# 2. get help
m 

# 3. create a partition table
# gpt table is prefered
g

# 4. type the partition number type to create
# examples:  
# linux 1
# Partition number: 
1

# 5. Press enter for the first sector.
# 2048 is typically the default
# First sector:
[enter] 

# CAUTION!
# 6. If you have one partition for all disk
# Press enter for the last sector.
# Last sector:
[enter]


# 7. If you have multiple partitions 
# type +20G  (for giga) or +20m for mega
# Example (partition of 100 Gigas) 
+100G

# 8. Save your changes and exit
w

# 9. check disk creation.
# Commands 

lsbk
sudo fdisk -l

```

## Format disk

```bash
mkfs.ext4 /dev/sdb1

```

## Mount the volumme

```bash
sudo mkdir /mnt/vol1
mount /dev/sdb1 -t ext4 /mnt/vol1

```

## Test the volume

```bash
# create a testfile on the volume
touch testfile /mnt/vol1
ls /mnt/vol1
# remove the testfile
rm /mnt/vol1/testfile

```

## Next steps
Add the volume in the /etc/fstab file.