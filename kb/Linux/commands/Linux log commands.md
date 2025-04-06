# Log commands

```bash

# view a log in realtime
tail -f /var/log/syslog

# search log
grep network /var/log/syslog
cat /var/log/syslog | grep network


# show 10 headlines
heal -n 10 /var/log/syslog

# show 100 last lines
tail -n 100 /var/log/syslog

```