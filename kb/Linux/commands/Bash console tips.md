---
tags:
  - tech/linux/commands/bash
---

## History Commands

| Action     | Command                         |
| ---------- | ------------------------------- |
| [number]   | Repeat history command [number] |
| !! [parms] |                                 |

## Mutiple and Persistent Sessions

Comando: `Screen`

Cria um terminal virtual que pode acomodar diversas sessões simultâneas

- Ctr a C = Nova sessão dentro do screen
- ctr a a = Alterna entre sessões dentro do screen
- ctr a " = lista sessões abertas no screen
- ctr a d = Desconecta do screen (para poder voltar depois).
- screen -list = lista se tem screen criado
- screen -r Reconecta no screen existente
- exit - Fecha sessão do screen

O screen é útil numa sessão ssh pois o usuário pode se desconectar da sessão e deslogar da máquina.

Ao retornar ele usa `screen -r` para reconectar na sessão existente, que não é perdida.

| Comando   | Função                |
| --------- | --------------------- |
| tecla tab | completa comando      |
| Control W | Apaga ultima palavra  |
| Control U | Apaga linha inteira   |
| Control D | Logout                |
| !!        | repete ultimo comando |

## Return Codes

- Return code = 0 - No failure
- Return code != 0 - Failure

### The System $? Variable

At the code below $? is a system variable that represents the return code of a command. As we can see, we can capture the return code.

`ll /root ; echo "RC = $?"`

## Command Chaining

Doesn’t run the second command if the first command fail. `mkdir test1 && ll`

Runs the second command only if the first command fail `mkdir test1 || ll`

If command1 executes without fail, then execute command2, otherwise, execute command3 `command1 && command2 || command3`