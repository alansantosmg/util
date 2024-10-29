---
tags:
  - tech/windows/solutions
---


# How to Remove Grub from Boot Loader


1. Open CMD with admin privilegies

```
diskpart
list vol

```

1. The command “list vol” will show you all the disk volume. one of this will be EFI/System volume, it will always in FAT32 format.
2. Select the volume by “Select Volume X” command where X will be replaced by volume number or EFI/System volume.
3. Assign the letter to volume using “Assign Letter=X” command, where x will be replaced by any letter. For convenience I’m assigning letter Z. Type “Exit” command to close the window after assigning the letter.

Example:

```
select volume 1
assign letter=x

```

1. Type “x:” command to access the EFI drive.
2. Type the command “dir” to find the directory inside the drive.
3. Now type “cd EFI” command to go inside the EFI directory.

Example:

```
x:
dir
cd EFI

```

1. Type “dir” to view the directory the directory inside. There will be more than 2 directory one will be *Microsoft*, second will *Boot* and **third will be the OS directory that was uninstalled** it may be Ubuntu if you uninstalled ubuntu. In the example the third directory is Android.

```
dir
rmdir -s Android
cd ..
cd ..
remove letter=x
```

## Reference
 https://www.binaryera.com/2020/08/RemoveGrubFromWindow10.html