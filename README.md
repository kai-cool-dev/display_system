# display_system

This script shows all system data and some nice and neat little stats from your installed services (if supported).

Currently in developement but it runs productive on over 21 servers.

## Installation:

run install.sh

## Supported Services with Stats or similar:


1. MySQLD: (root password needs to be set in /etc/mysql/my.cnf in the client section: https://stackoverflow.com/questions/13814413/how-to-auto-login-mysql-in-shell-scripts/26680426). Shows processlist, stats and active databases.
2. Screen: shows running screen sessions
3. Varnish: Shows backend status with full details
4. Bird: Shows connected BGP peers with routing details and ASN + Endpoint
5. PowerDNS authorative: Shows count of zones, Uptime of DNS Server and some query stats
6. MDADM: Shows RAID informations. If raid is faulty also the faulty disk, recovery stat, etc

More Services coming soon

## Supported Services without stats:

1. NGINX
2. PHP 5.6 - 7.2
3. PowerDNS recursor
4. Postfix
5. Dovecot
6. NTOPNG

More Services coming soon 
