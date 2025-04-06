# Restore server packages

```bash
## Backup list packages to reinstall

dpkg --get-selections > packages.list

## Restore packages from list

sudo apt update
sudo apt install dselect


sudo deslect update
sudo dpkg --set-selections < packages.list
sudo apt-get dselect-upgrade
# Obs: dselect only works with apt-get

```