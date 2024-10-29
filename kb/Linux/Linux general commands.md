---
tags:
  - tech/linux/solutions
---

# Linux Tips

tags:: [[tech/howto/linux]] [[vault-tunning/to-refactor]] [[zettels/fleeting]]

## Create Ssh-key

```bash
cd ~ssh-keygen
```

## Add Signal IM

```bash
wget -O- https://updates.signal.org/desktop/apt/keys.asc |\\\n  sudo apt-key add -echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" |\\\n  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
```

## Adicionando Pacotes Essenciais

```bash
# Add slimbook battery reposudo add-apt-repository ppa:slimbook/slimbooksudo apt-get updatesudo apt install git vim-gtk3 imwheel exuberant-ctags curl fish synaptic fzf fonts-powerline mpv mplayer slimbookbattery   ttf-mscorefonts-installer vscode htop remmina calibresudo snap install color-picker glow draw.io shortwave anki flameshot goodvibes Stacer scribus signal-desktop
```

## Corrige Problema Do Phone Bluetooth Que Faz Internet Wifi Ficar Lenta Linux Mint

```bash
sudo echo "options iwlwifi 11n_disable=1 bt_coex_active=1" >> /etc/modprobe.d/iwlwifi.conf
```

## Set Fish as Default Shell

```bash
chsh -s /usr/bin/fish
```

## Install Spacefish

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimcurl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisherfisher install matchai/spacefish
```

## Git Setup

```bash
cd ~mkdir srccd srcmkdir github.comcd github.comgit config --global user.name alansantosmggit config --global user.email alansantosmg@hotmail.com
```

## Update Themes

```bash
cd ~gtk-update-icon-cache /home/alan/icons/Papirus-Darkgtk-update-icon-cache /home/alan/.icons/Papirus-Darkgtk-update-icon-cache /home/alan/.icons/Flat-Remix-Blue-Dark
```

## Update Font Cache

```bash
sudo fc-cache -v -f
```

## Intall Golang

```bash
cd ~/Downloadssudo tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz
```

## Corrigir Erro Init-ramfs Ubuntu E Mint

```bash
cd /etc/initramfs-tools/sudo vim initramfs.confCOMPRESS=gzipsudo update-initramfs -u
```

## Corrigir Erro Pci Laptop Hp

```bash
cd /etc/defaultsudo vim grubGRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=nomsi,noaer"GRUB_CMDLINE_LINUX="pci=nomsi,noaer"sudo update-grub
```

## Install Hugo

```bash
cd ~/src/github.com/hugohugoCGO_ENABLED=1 go install --tags extended
```

## Corrigir Erro Monitoramento Arquivos Vscode

```bash
 cat /proc/sys/fs/inotify/max_user_watches echo "fs.inotify.max_user_watches=32768" >> /etc/sysctl.conf
```

## Corrigir Erro Wifi after Suspend Mode - Xubuntu / Mint Xfce

### Solução 1

```bash
sudo iwconfig wlo1 power off
```

### Solução 2

```bash
sudo vim /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf.# File to be place under /etc/NetworkManager/conf.d#[connection]# Values are 0 (use default), 1 (ignore/don't touch), 2 (disable) or 3 (enable).[connection]wifi.powersave = 2
```

### Solução 3

```bash
# criar o arquivo:
sudo vim /etc/systemd/system/wifi-resume.service
```

```bash
# conteudo do arquivo 
[Unit]
Description=Local system resume actionsAfter=suspend.target
[Service]
Type=oneshotExecStart=/bin/
systemctl restart network-manager.service
[Install]
WantedBy=suspend.target
```

```bash
# Tornar arquivo executavelsudo chmod +x  /etc/systemd/system/wifi-resume.service`# habilitar inicio automatico pelo sysctl`sudo systemctl enable wifi-resume.service`
```

## Corrigir Erro DNS E Lentidão Wifi - Xubuntu

```bash
 sudo vim /etc/nsswitch.conf# hosts:          files mdns4_minimal [NOTFOUND=return] dnshosts files dns
```

## Correção Teclas F no Vscode

- Para Vscode funcionar corretamente, desativar Workspace Ctrl+Fn em settings/window manager/Keyboard

## Setar Tecla Windows no - Xubuntu

```bash
xfce4-popup-whiskermenu = tecla windows
```

## Setar Segundo Monitor à Esquerda - Xubuntu E MintX

- Para funcionar com segundo monitor a esquerda ir em `panel preferences`, desmarcar `span monitors`.
- Escolher o monitor que deve aparecer o painel em output.

## Acertar Hora no Mintx E Xubuntu Em Máquinas Dual Boot Com Windows

- Execute um destes dois comandos que correspondem à sua hora local

```bash
timedatectl set-local-rtc 1 --adjust-system-clock# ou:timedatectl set-local-rtc 0 --adjust-system-clock
```