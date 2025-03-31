---
tags:
  - tech/linux/commands/trounbleshooting
---

# Linux - Troubleshooting Tools

# Linux - Troubleshooting Tools

status:: tags:: [[tech/cheat_sheet/linux]]

## Basic Info Commands

| Action                    | Command           |     |
| ------------------------- | ----------------- | --- |
| Show shell level          | echo SHLVL        |     |
| Show env variables local  | printenv          |     |
| Show env variables local  | env               |     |
| Show env variables        | set               |     |
| Show command path         | which             |     |
| Show current user         | whoami            |     |
| Show connected users      | who               |     |
| Show executable file path | type -a [command] |     |

## Basic Troubleshooting Commands

| Comando                  | Função                               |
| ------------------------ | ------------------------------------ |
| top                      | CPU/Memory State                     |
| ps -ef                   | Listar processos usuário             |
| ps aux                   | Listar todos processos usuário       |
| ps u -C apache           | Listar processos que tem apache      |
| ps aux --sort=-pcpu      | Listar processos por uso de cpu      |
| `ps aux –sort=-pcpu pipe | head -n5`                            |
| `ps aux –sort=-pmem pipe | head -n5`                            |
| ps aux -l                | Listar processos PRI(oridade) NI(ce) |
| renice -n 10 -p 41267    | altera prioridade de processo        |
| nice -n 10 vim           | abre vim com prioridade 10           |
| sudo nice -n -10 vim     | aumenta prioridade do processo p/ 10 |
| killall -s9              | Kill proccess tree                   |
| df -h                    | status espaço em disco               |
| free -h                  | status uso memória                   |
|                          |                                      |

## Using Top

`s` option: change the refresh interval. Default: 3 seconds. 
Example: `top s 1` changes the refresh interval to 1 second.

- us: User space CPU
- sy: System cpu Time 
- ni: Nice time 
- id: Idle cpu time 
- wa: IO cpu waiting time 
- hi: % of cpu time waiting hardware interrupts **higher value represents hardware is slow for the CPU loads** 
- si Number of software interrupts during the time interval. Higher number can indicate that some software app may be in loop or race condition. 
- st: Thime stolen from “this” VM
- PID: process ID 
- User: username of the proccess owner 
- PR: The priority of the proccess 
- Virt: virtual memory allocated. 
- Res: Non swapped memory consumed by a process 
- SHR: The amount of shared memory in kb used by the process 
- s: The status of the process: S: Sleeping Z: Zombie R: Running T: traced I: idle D: Deep. 
- % CPU: Cpu cicles 
- % MEM: mem used by the process Time+: cumulative cpu time consumed by process.

Actions: `K`: kill a process. Signal: 15 or 9. `r`: renice the process

## The Kill Commmand

kill -l list all kill signals - **signal 15** = sigterm - **signal 2** = sigint (It’s like Ctrl-C) - **signal 9** = sigkill

## Show the Virtual Memory Statistics

```bash
vmstatwatch vmstat -D
```

## Show Memory Stats

`watch free -h`

## Show reading/writing Stats

`iotop`

## Show Hardware Information

```bash
lshwdmidecodelscpulsusb -vlspci -vsensors-detect
```

### Show Hardware Temperature

```bash
sudo dnf -y install lm_sensorssudo dnf -y instal hddtempyes | sensors-detectsensorshddtemp
```

## Collect Statistics

`sudo dnf -y install sysstat` 

Location of log files generated: 
`/var/log/sa` 

- SAR All information: `sar -A |less` 
- CPU, Memory, Swap Space: `sar -urS` 
- CPU Data: `sar -P All -s 07:50:00 -e 08:11:00` 
- Network data: `sar -n ALL |less` 
- Realtime data: `sar -r 5 10`  FCollect statistis about 10 minutes

# References