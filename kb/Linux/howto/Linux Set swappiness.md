# Linux Set swappiness

## View actual swappiness
`cat /proc/sys/vm/swappiness`

## Change swappinness

### Option 1
1. go: `cd /etc/sysctl.d`
2. Create a file: `touch 10-sysctl.swappiness`
3. put the code in the file:
4. `vm.swappiness=10`

### Option 2
1. Edit the `sudo nano /etc/sysctl.conf` file
2. put the code in the file:
3. `vm.swappiness=10`


### Number options
10 = Does swap if the system have 10% of free memory only.
20 = Does swap if the system have 20% of free memory only.
40 = Does swap if the system have 40% of free memory only.