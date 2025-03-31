---
tags:
  - tech/linux/glpi
---


# How to Install GLPI on Linux


## Instalação SSH Server

Verificar se ssh server está instalado e ativo:

```
systemctl status sshd

```

Caso não esteja instalado, instalar:

```bash
sudo apt-get install openssh-server
systemctl status sshd

```

---

## Instalação De Requisitos

```bash
sudo apt install mariadb-server
sudo apt-get -y install apache2 libapache2-mod-php
sudo apt-get -y install php php-{curl,gd,imagick,intl,apcu,memcache,imap,mysql,cas,ldap,tidy,pear,xmlrpc,pspell,mbstring,json,common,xml,gd}

```

## Parametrização Mysql

```bash
sudo mysql_secure_installation

```

- Digitar enter p/ acessar mysql (senha em branco root)
- Definir senha de root para mysql
- Remover acesso anonymo para produção
- Nao permitir conexão remota de root
- Remover base de teste
- Recarregar privilégio das

### Privilégios De Root no Mysql

```bash
sudo mysql -u root -p

```

### Script Para Permissão De Root no Mysql

```bash
UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE User = 'root';
FLUSH PRIVILEGES;
QUIT;

```

### Configurar Extensões Faltantes Do PHP

```bash
sudo vim /etc/php/7.4/apache2/php.ini

```

Descomentar as extensões:

- extension=curl
- extension=gd2
- extension=imap
- extension=ldap
- extension=mbstring
- extension=mysqli
- extension=xmlrpc
- extension=xsl

### Habilitar Extensões Novas no PHP

```bash
sudo service apache2 restart

```

---

## Instalação GLPI

### Criação De Base De Dados Do GLPI

```bash
mysql -u root -p

```

### Script Para Criação De Base no GLPI

```sql
CREATE DATABASE glpi;
CREATE USER 'glpi'@'localhost' IDENTIFIED BY 'StrongDBPassword';
GRANT ALL PRIVILEGES ON glpi.* TO 'glpi'@'localhost';
FLUSH PRIVILEGES;
EXIT;

```

### Instalação Do Software GLPI

```bash
cd ~
export VER="9.4.6"
wget https://github.com/glpi-project/glpi/releases/download/$VER/glpi-$VER.tgz
tar xvf glpi-$VER.tgz
sudo mv glpi /var/www/html/

```

### Setar Permissoes Apache GLPI

```bash
cd /var/www/html/glpi
chmod 755 files -R
sudo chown -R www-data files
chmod 755 config -R
sudo chown -R www-data config

```

### Configurar GPLI

Acessar via browser `10.0.0.212/gpli/install`

### Dados Para Configuração Inicial

- Database = gpli
- servidor de banco de dados: 127.0.0.1
- senha de conexão: usar a senha do database do GLPI

### Acesso Inicial GPLI

- user: glpi
- password: glpi

### Remover Arquivo De Instalação Do GLPI

```bash
rm /var/www/html/glpi/install/install.php

```

### Alterar Senha Para Usuários

Alterar senha dos usuários padrão criados pelo GLPI na interface do programa:

- normal
- tech
- post-only
- glpi

### Dados Para Sincronização LDAP

- criar usuário glpi no Active directory e atribuir uma senha
- Acessar GLPI como administrador
- Ir em: Configurar -> autenticação -> Diretórios LDAP

Parametros:

nome: `acotel.local`

servidor: `10.0.0.201`

Filtro de Conexão: `(&(objectClass=user)(objectCategory=person))`

Porta ldap: `389`

base dn: `dc=acotel,dc=local`

root dn: `acotel\glpi`

senha: senha do usuario glpi do AD

campo de login: `samaccountname`

### Importar Usuários Do AD

- Ir em Administração -> usuários -> link do diretorio ldap
- Ir em importar novos usuários
- Ir em avançado

baseDN: `dc=acotel,dc=local`

pesquisar `filtros para usuários: (& (samaccountname=*) )`

- Clicar em pesquisar
- Marcar usuários na lista
- Clicar em ação
- Selecionar importar no combo box.
- Dar ok e aguardar importação

### Instalação Do Fusion Inventory Plugin

```bash
cd ~
wget https://github.com/fusioninventory/fusioninventory-for-glpi/releases/download/glpi9.4%2B2.4/fusioninventory-9.4+2.4.tar.bz2
tar -jxvf fusioninventory-9.4+2.4.tar.bz2
mv fusioninventory /var/www/html/glpi/plugins

```

### Ativar O Plugin no GLPI

Configurar -> Plugins -> fusioninventory +

Após configurar, habilitar o plugin

## Habilitar Extensões GLPI (Segurança)

Enable bz2 extension at `php.ini`

```bash
sudo apt-get install php7.4-zip php7.4bz2sudo service apache2 restart
```

## Configurar Email - Notificações GLPI

- Gmail:
    - smtp+ssl : usar porta 465
    - smtp + tls: usar porta 587
- Office 365:
    - Email do admiministrador precisa ser igual em todos os campos
    - smtp + tls: user porta 587 + certificado

## Proteger Diretórios Do GLPI

Alterar o arquivo `apache2.conf`:

De:

```xml
<Directory /var/www/>        Options Indexes FollowSymLinks        AllowOverride None        Require all granted</Directory>
```

Para:

```xml
<Directory /var/www/>        Options Indexes FollowSymLinks        AllowOverride None        Require all granted</Directory>
```

## LDAP Filter for GLPI

```
dc=acotel,dc=local
(&  (&(objectClass=user)(objectCategory=person)))

```

## Set Active Directory Max Connections

Deve ser usado se houver problemas ao importar usuários para GLPI.

Abrir prompt de comando e executar:

```cmd
ntdsutil
LDAP policies
connections
connect to server actad02
q
Show values
Ldap policies
Set Maxconnections to 10000
commit changes
Show values
q

```