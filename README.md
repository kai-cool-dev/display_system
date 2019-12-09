display_system
==============

This script shows all system data and some nice and neat little stats from your installed services (if supported).

Currently in developement but it runs productive on over 30 servers.

Installation:
-------------

Rolling Release:

```
git clone https://github.com/kai-cool-dev/display_system.git
./install.sh
```

Update
------

```
git pull
./install.sh
```

Information:
------------

This script is meant to be used to be deployed automatically over ansible so it detects services automatically. None of the service is a requirement!

## Supported Services with Stats or similar:

- MySQLD: (root password needs to be set in /etc/mysql/my.cnf in the client section: <https://stackoverflow.com/questions/13814413/how-to-auto-login-mysql-in-shell-scripts/26680426>). Shows processlist, stats and active databases.
- Screen: shows running screen sessions
- Varnish: Shows backend status with full details
- Bird: Shows connected BGP peers with routing details and ASN + Endpoint
- PowerDNS authorative: Shows count of zones, Uptime of DNS Server and some query stats
- MDADM: Shows RAID informations. If raid is faulty also the faulty disk, recovery stat, etc
- NFS: Shows active connections and lists these
- Proxmox: Shows status of created VMs
- Dovecot: Shows count of mailbox-user, sieve-filter and todays mails through mail.log (please edit display_system if you don't use /var/log/mail.log and please setup logrotate! currently not supported with any other logging!)
- TOR: Shows ports and hidden service domains (please edit display_system if you don't use /etc/tor/torrc as your configfile)
- Docker: Lists current running container with CPU and RAM stat
- Docker-Machine: Lists current docker machines with status
- PHP-FPM: Shows status
- NGINX: Lists current vhosts
- Redis: Lists current used Memory, Databases and Keys
- Redis Sentinel: Lists current connected slaves and slave ip and status

More Services coming soon

See status of active systemd deamons:
-------------------------------------

Please run the programm with trigger -services to show this!

```
display_system -services
```

## Add notice for your users

If you place a file called `README.txt` in the Home directory of your users it will be displayed in display_system
