---
tags:
  - tech/linux/commands/general
---

# Linux Commands

tags:: [[tech/cheat_sheet/linux]] [[vault-tunning/to-refactor]]

## Table of Contents

- [Linux Tips](about:blank#linux-tips)
    - [Table of contents](about:blank#table-of-contents)
    - [Arquivos](about:blank#arquivos)
        - [Localização de arquivos](about:blank#localiza%C3%A7%C3%A3o-de-arquivos)
        - [Manipulação de Arquivos](about:blank#manipula%C3%A7%C3%A3o-de-arquivos)
        - [File descriptors](about:blank#file-descriptors)
    - [Atalhos e pipes](about:blank#atalhos-e-pipes)
    - [Comandos de compilação](about:blank#comandos-de-compila%C3%A7%C3%A3o)
    - [Compactação de arquivos](about:blank#compacta%C3%A7%C3%A3o-de-arquivos)
    - [Instalador APT](about:blank#instalador-apt)
        - [Adicionar PPA](about:blank#adicionar-ppa)
        - [Exportar lista de pacotes instalados e restaurar em nova instalação](about:blank#exportar-lista-de-pacotes-instalados-e-restaurar-em-nova-instala%C3%A7%C3%A3o)
    - [Monitoramento de processos](about:blank#monitoramento-de-processos)
    - [Networking](about:blank#networking)
        - [WIFI](about:blank#wifi)
    - [Redirecionamento de Comandos com pipe](about:blank#redirecionamento-de-comandos-com-pipe)
        - [Redirecionar a saida de um comando p/ outro c/ xclip](about:blank#redirecionar-a-saida-de-um-comando-p-outro-c-xclip)
    - [Shell - Programas](about:blank#shell---programas)
    - [Usuários e permissões](about:blank#usu%C3%A1rios-e-permiss%C3%B5es)
        - [Alteração de permissões de arquivo em lote](about:blank#altera%C3%A7%C3%A3o-de-permiss%C3%B5es-de-arquivo-em-lote)
    - [Serviços](about:blank#servi%C3%A7os)
    - [SSH](about:blank#ssh)
    - [Bash tricks](about:blank#bash-tricks)
        - [Aliases legais](about:blank#aliases-legais)
    - [Crontab](about:blank#crontab)
    - [Monitoramento de disco](about:blank#monitoramento-de-disco)

## Arquivos

### Localização De Arquivos

| Comando | Função             |
| ------- | ------------------ |
| locate  | localizar arquivo  |
| which   | localizar programa |
| grep    | Find in files      |
| pwd     | diretorio atual    |

### Manipulação De Arquivos

| Comando                     | Função                                                 |
| --------------------------- | ------------------------------------------------------ |
| touch                       | criar arquivo                                          |
| cat                         | ler arquivo                                            |
| head                        | ler 10 linhas inicio arquivo                           |
| tail                        | ler 10 linhas final arquivo                            |
| more                        | ler arquivo c/ paginação p/ fim                        |
| less                        | ler arquivo c/ paginacao inicio/fim (ler pdf no xterm) |
| wc -w file                  | Conta palavras ou linhas                               |
| rmdir                       | Deletar diretório vazio                                |
| du - h                      | Saber tamanho de diretório ou arquivo                  |
| ln -s lib.so.2 lib.so.1     | Sistema só tem a lib.so2. apontar lib.so1 p/ ela.      |
| ln -sf alvo Atalho          | Cria link simbolico (atalho) para alvo                 |
| cal -3                      | Calendario ultimos 3 meses                             |
| cal -m 6 -3                 | Calendario maio/junho/julho                            |
| bc 2+2                      | Calcula 2+2                                            |
| tail -f /var/log/syslog     | Ver arquivo em tempo real                              |
| tail -n 100 /var/log/syslog | Ver ultimas 100 linhas do arquivo                      |

Copiar arquivo para diretório em que está usando ponto:

`cp /var/log/syslog .`

Trabalhando com multiplos diretórios:

`mv dir1 dir2 dir3 /path/to/destiny`

### File Descriptors

stderr: Mensagens de erro: 2

stdout: Mensagens de sucesso: 1

Exemplos:

```bash
find / -name "syslog" 1> stout.txt 2 > stderr.txtfind / -name "syslog" 1> stout.txt 2 > /dev/nullfind / -nmae "syslog 2 > /dev/null
```

## Comandos De Compilação

```bash
./configuremakemake install / make uninstall
```

## Compactação De Arquivos

`zip -qc` | compact file |`tar -czvf file.tar.gz file` | compactar,zip,verbose,arquivo .tar.gz |`tar -xzvf file.tar.gz` | extract,zip,verbose,arquivo |`tar -tf file.tar.gz` | test(list),arquivo |

## Instalador APT

| Comando                  | Função                         |
| ------------------------ | ------------------------------ |
| apt-get install          | Instala programa               |
| apt-get update           | Atualiza cache lista programas |
| apt-get remove           | Remove programa                |
| apt-cache search         | Procura programa para instalar |
| apt list --upgradeable   | lista atualizações p/ instalar |
| apt-get upgrade          | Instala atualizações           |
| dpkg -i file             | instala pacote .deb            |
| dpkg -r file             | remove pacote .deb             |
| Sudo snap search pacote  | Procura snap                   |
| Sudo snap install pacote | Adiciona snap                  |
| Sudo snap remove pacote  | Remove snap                    |

### Adicionar PPA

`sudo apt-add-repository ppa:username/myawesomesoftware-1.0`

### Exportar Lista De Pacotes Instalados E Restaurar Em Nova Instalação

```bash
# exportaçãosudo apt-get updatedpkg --get-selections > package.list# importaçãosudo apt updatesudo apt install dselectsudo dselect updatesudo dpkg --set-selections < packages.listsudo apt-get dselect-upgrade
```

## Monitoramento De Processos

## Networking

| Comando                                  | Função                              |
| ---------------------------------------- | ----------------------------------- |
| ssh-import-id-gh <username>              | importa chave ssh do github (ubuntu |
| ip if=eth0 && sudo ip link set \$if down | Desabilita interface                |
| ip addr                                  | Ver interfaces de rede              |
| wget url                                 | download de arquivo da internet     |

### WIFI

| Comando                         | Função                             |
| ------------------------------- | ---------------------------------- |
| nmcli dev wifi list             | List wi-fi networks                |
| mcli dev wifi con my-ssid pwd   | connect to a network               |
| nmcli dev                       | show network interfaces and status |
| nmcli d                         | show network interfaces and status |
| nmcli r wifi on                 | Start wifi                         |
| nmcli c add type wifi ssid-name | add a connection                   |
| nmcli c modify <PAR>            | change a connection                |
| nmcli c up                      | up a connection                    |
| nmcli con down ssid             | disconnnect from AP                |

## Redirecionamento De Comandos Com Pipe

```bash
 echo "2+2"; echo "3*3" | bc       # Calcula 2+2 e 3*3 pwd | xsel -b                     # Copia pat para clipboard xsel -b                           # Cola path ond está cursor wc -w *.txt | grep total          # Conta palavras de arquivos.txt e totaliza history | less                    # comandos já digitados dmesg | less                      # Log inicialização ps -e | wc -l                     # Conta quantos tem rodando no sistema
```

### Redirecionar a Saida De Um Comando p/ Outro c/ Xclip

```bash
# Instalar o xclip:sudo apt-get install xclip# criar aliases:alias c='xclip'alias v='xclip -o'
```

Exemplo:

```bash
pwd | ccd (v)
```

## Shell - Programas

| Comando                    | Função                                    |
| -------------------------- | ----------------------------------------- |
| program &                  | iniciar program em background             |
| program > /dev/null &      | programa em backgrond sem msgs na tela    |
| program & > /dev/null 2>&1 | programa em bg sem msgs normais e de erro |
| jobs (fg, bg)              | front/background files                    |
| `env                       | grep path`                                |
| path=$path:/fs             | Add /fs to the path                       |

## Usuários E Permissões

| Comando                        | Função                                      |
| ------------------------------ | ------------------------------------------- |
| adduser                        | Adicionar usuário                           |
| useradd                        | Adicionar usuário                           |
| userdel                        | Deletar usuário                             |
| usermod -a -G thegroup theuser | Adiciona usuário a um grupo                 |
| paswd username                 | Altera senha do usuário                     |
| paswd -l username              | bloqueia usuário                            |
| groups theuser                 | Lista grupos do usuário                     |
| groupadd user group            | adiciona grupo ao usuário                   |
| groupdel user group            | adiciona usuario ao grupo                   |
| gpasswd                        | adicionar / remove grupo do usuário         |
| Usermod -l                     | rename login                                |
| usermod                        | move home para outro usuário                |
| Chage -l                       | view password expiration                    |
| Chage -M 90                    | (set expiration password 90 dd              |
| Chage -m 5 (five caracters)    |                                             |
| chmod -ugoa+rwx file           | Modificar permissões de arquivo (ex: total) |
| whoami                         | Usuário atual logado                        |
| 4 read 2 write 1 execute       | Octal mode                                  |
| chmod 755 file or dir          | user (all), Group (rx) others (rx)          |
| chmod 777 file or dir          | user (all), Group (all others (all)         |
| chmod 400 file or dir          | user (r) group (none) others (none)         |
| chmod 775 file or dir          | user (All) group (all), others(x)           |
| chown                          | mudar usuário, grupo do arquivo             |

### Alteração De Permissões De Arquivo Em Lote

```bash
# Altera permissão somente de arquivos no pathfind /path/to/dir/ -type f -exec chmod 644 {} \\;# Altera permissão somente de diretorios no pathfind /path/to/dir/ -type d -exec chmod 755 {} \\;
```

Para copiar arquivos para todos novos usuários criados, colocar no diretorio `/etc/skel`

Para implementar política de senhas ver configurações em `/etc/pam.d`

## Serviços

| Comando                        | Função                                |
| ------------------------------ | ------------------------------------- |
| /etc/init.d/                   | system services dir                   |
| service file stop/start/status | services /etc/init.d/                 |
| /etc/init.d file start/stop    | start/finish service from etc/init.d/ |
| `systemctl                     | grep ssh`                             |
| systemctl status ssh           | list ssh service status               |
| systemctl start, stop, restart | Inicia ou para serviços               |
| systemctl enable,disable       | habilita serviço p/ iniciar no boot   |
| systemctl enable --now ssh     | habilita p/ iniciar no boot e inicia  |

## SSH

Para liberar SSH para root ir em /etc/ssh/ssh.conf

## Bash Tricks

- Para ver o histórico: `history`
- Para chamar um comando do historico `!numeroDocomando`
- Para apagar um comando do histórico `history -d numeroDocomando`
- Para não incluir um comando no histórico, dar um espaço antes do comando

Em distribuições que não estão configuradas p/ ignorar histórico com um espaço, incluir no `.bashrc` o comando `HISTCONTROL=ignoreboth`

**Esqueceu de dar sudo antes do comando?** Experimente `sudo !!` para repetir o comando com sudo.

**Autocompletar:** usar 2 tabs

Control R - procura no histórico do bash

A diferença entre encadear comandos com && e ; é que com ; o segundo comando executa mesmo se primeiro não for bem sucedido.

### Aliases Legais

```bash
alias cpu10='ps -L aux | sort -nr -k 3 |head -10'alias mem10='ps -L aux | sort -nr -k 4 |head -10'alias lsmount='mount |column -t'
```

## Crontab

Listar job: `crontab -l`

criar job: `crontab -e`

```
minuto  hora  dia   mes   diaSemana       comando
0-60    0-23  1-31  1-12  0-6(sunday-sat) comando

```

## Monitoramento De Disco

| Comando       | Função                           |
| ------------- | -------------------------------- |
| df -i         | verificar inodes                 |
| df -h         | verificar espaço utilizado       |
| du -hsc *     | Directory usage                  |
| fdisk -l      | list devices                     |
| fdisk         | create partition table/partition |
| lsblk         | list devices                     |
| mkfs.ext4     | Format disk partition            |
| blkid         | show uuid for devices            |
| sudo mount -a | Mount any fstab entries          |

Fstab formato:

```bash
device     mount point  fstype options   dump check/dev/sdb1  /mnt/vol1     ext4  defaults  0       0
```

- check = 0 não checa
- check = 1 checa em caso de erros
- check = 1 checa em todo boot

Verificar espaço em disco amigável:

Ncurses disk usage: `sudo apt-get install ncdu`

O numero de inodes é limitado por device. As vezes um disco pode conter milhões de arquivos pequenos, usar pouco espaço mas acabar com os inodes disponíveis.

/dev/nu

echo “blacklist floppy” | sudo tee /etc/modprobe.d/blacklist-floppy.conf

sudo rmmod floppy

sudo dpkg-reconfigure initramfs-tools