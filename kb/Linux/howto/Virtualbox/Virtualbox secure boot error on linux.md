---
tags:
  - tech/linux/virtualbox
  - tech/linux/solutions
---

# How to Correct Secure Boot Error on Linux Virtualbox


Abra o terminal e instale o virtualbox com apt-get install virtualbox (ignore os avisos e pedidos para desativar o boot seguro do UEFI)

Crie um “par de chaves X.509”:

```bash
openssl req -new -x509 -newkey rsa:2048 -keyout vboxdrv.priv -outform DER -out vboxdrv.der -nodes -days 36500 -subj "/CN=MySelf/"
```

Assine o módulo do virtualbox:

```bash
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./vboxdrv.priv ./vboxdrv.der $(modinfo -n vboxdrv)
```

Importe a chave pública gerada com:

`sudo mokutil --import vboxdrv.der`

## Rodar Script Abaixo Apos Atualizar O Kernel