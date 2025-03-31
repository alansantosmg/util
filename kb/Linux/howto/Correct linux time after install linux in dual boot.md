---
tags:
  - tech/windows/solutions
  - tech/linux/solutions
---

# How to Correct Windows time after Install Linux Dual Boot


Em instalações dualboot windows/linux o horário do Windows fica incorreto.

É possível corrigir no linux:

1. Verifique se o relógio do Linux está usando UTC:
- `timedatectl | grep local`
1. Se estiver, mude para local time:
- `timedatectl set-local-rtc 1`
1. Caso queria desfazer a mudança:
- `timedatectl set-local-rtc 0`