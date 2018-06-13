# display_system

This script shows all system data and some nice and neat little stats from your installed services (if supported).

Currently in developement but it runs productive on over 21 servers.

This piece of software is licensed under the Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) more information here: https://creativecommons.org/licenses/by-sa/4.0/

## Installation:

git clone http://gitlab.fastnameserver.eu/server/display_system.git
run install.sh

## Supported Services with Stats or similar:


1. MySQLD: (root password needs to be set in /etc/mysql/my.cnf in the client section: https://stackoverflow.com/questions/13814413/how-to-auto-login-mysql-in-shell-scripts/26680426). Shows processlist, stats and active databases.
2. Screen: shows running screen sessions
3. Varnish: Shows backend status with full details
4. Bird: Shows connected BGP peers with routing details and ASN + Endpoint
5. PowerDNS authorative: Shows count of zones, Uptime of DNS Server and some query stats
6. MDADM: Shows RAID informations. If raid is faulty also the faulty disk, recovery stat, etc
7. NFS: Shows active connections and lists these
8. Proxmox: Shows status of created VMs
9. Dovecot: Shows count of mailbox-user, sieve-filter and todays mails through mail.log (please edit display_system if you don't use /var/log/mail.log and please setup logrotate! currently not supported with any other logging!)

More Services coming soon

## See status of active systemd deamons:

Please use trigger -services to show this!
