---
tags:
  - tech/linux/ubuntu
  - tech/linux/solutions
---
# How to Correct the App Store Loading Error on Ubuntu


O cache da loja de aplicativos do Ubuntu pode se corromper levando a duas situações: 

ou a loja não carrega ou a lista de aplicativos é baixada cada vez que o software é aberto (não faz cache). 

Para corrigir é preciso apagar o cache. 

Abra um terminal e digite os comandos abaixo e depois abra novamente a loja para baixar a lista de apps e criar um novo cache:

- `killall gnome-software`
- `sudo rm -rf ~/.local/share/gnome-software`


