## Set up MySQL init scripts
## mkdir -p /etc/services.d/mysql
# echo '#!/usr/bin/with-contenv bash
# ## load /etc/environment vars first:
# for line in $( cat /etc/environment ) ; do export $line > /dev/null; done
# exec /usr/bin/mysqld_safe 0' \
echo '#!/usr/bin/with-contenv sh
exec /usr/bin/mysqld_safe --user=mysql --skip-syslog --no-auto-restart --nowatch' \
> /etc/cont-init.d/mysql
# > /etc/services.d/mysql/run

# echo '#!/bin/bash
# service mysql stop' \
# > /etc/services.d/mysql/finish
