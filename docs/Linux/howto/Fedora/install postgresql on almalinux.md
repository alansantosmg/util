
# Install Postgresql on RHEL distributions

```bash
# install postgres
sudo dnf install postgresql-server 

# config posgres
sudo postgresql-setup --initdb

# open the 
/var/lib/pgsql/15/data/postgresql.conf 
#replace listen_addresses = ‘localhost’ with
listen_addresses = ‘*’.

# open
/var/lib/pgsql/15/data/pg_hba.conf 
# add the following entry to the end of it:
host	all	 all	0.0.0.0/0	md5

# start postgres
sudo systemctl enable postgresql.service
sudo systemctl start postgresql.service

# set postgres user password
passwd postgres



# View enabled and running services
systemctl list-unit-files --state=enabled
systemctl list-unit-files | grep enabled
systemctl | grep running

# Open postgres console
sudo -u postgres psql
```

## Refs:
https://www.liquidweb.com/blog/install-postgresql-almalinux/