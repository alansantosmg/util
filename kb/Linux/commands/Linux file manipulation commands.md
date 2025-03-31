---
tags:
  - tech/linux/commands/files
---


# Linux - File Manipulation Commands

Owner: Alan Santos
Tags: linux
Seleção: Cheat sheet

# Linux - File Manipulation Commands

status:: tags:: [[tech/cheat_sheet/linux]]

## Common Commands

| Action | Command |  |  |
| --- | --- | --- | --- |
| number the file lines | nl -ba [file] |  |  |
| View/follow last lines of a file | tail -f [file] |  |  |
| View follow journal logs last lines | journalctl –follow |  |  |
| View 7 first lines of a file | head -n 7 [file] |  |  |

## LS Command

ll = ls -l 
ll -n = show de user and group id of the files and dirs.

## Id Command

show de current user: id, groupId and groups.

## Grep Command

Examples:

`ls | grep ^d` Show files or directories starting with d.

`ls | grep -v ^d` Show files or directories not starting with d.

## The “yes command”

Yes creates a continous data stream which is displayed on the screen:

`yes [data]` Press CTR-c to stop

The `yes` command is util to create files with some data:

Example:

```bash
yes 12345 > test.txt
```

Example 2:

```bash
yes | rm * ; ll
```

## The Watch Command

Run a command continuous after a time interval.

Example:

```bash
watch -n 1 | df -h
```

The example repeat the `df` command again after 1 second.

## Time Command

Mesure a command execution time

```
time ls
```

---

# References