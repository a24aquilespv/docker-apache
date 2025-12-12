#!/usr/bin/bash


# Variables de entorno de apache2
# cat /etc/apache2/envvars >> /tmp/apache2_envvars
# /usr/bin/chmod +x /tmp/apache2_envvars
# ./tmp/apache2_envvars

# Variables de entorno apache
source /etc/apache2/envvars

# Solo si se está utilizando una shell interactiva
while read -r line; do
    echo "${line}" >> ~/set_apache_vars.sh
done < /etc/apache2/envvars

printf "\n%s\n" 'source ~/set_apache_vars.sh' >> ~/.bashrc
# echo -e "\nsource ~/set_apache_vars.sh\n" >> ~/.bashrc

chmod +x ~/set_apache_vars.sh
# ~/set_apache_vars.sh
# exec ~/set_apache_vars.sh &


# Apache se encarga de crear estos directorios y el
# fichero para el PID del demonio
# [[ ! -d ${APACHE_RUN_DIR} ]] && mkdir -p "${APACHE_RUN_DIR}"
# [[ ! -f ${APACHE_PID_FILE} ]] && touch "${APACHE_PID_FILE}"
# [[ ! -d ${APACHE_LOG_DIR} ]] && mkdir -p "${APACHE_LOG_DIR}"

# apachectl es un front-end para httpd
# Manual apachectl: https://httpd.apache.org/docs/2.4/programs/apachectl.html
# Manual httpd: https://httpd.apache.org/docs/2.4/programs/httpd.html

# apachectl is a front end to the Apache
# HyperText Transfer Protocol (HTTP) server.
# It is designed to help the administrator control the functioning of the
# Apache httpd daemon

# Ejecutar el servidor de apache en foreground
# Log level: info
# https://httpd.apache.org/docs/2.4/mod/core.html#loglevel

/usr/sbin/apache2ctl -D FOREGROUND -e info
#/usr/sbin/apache2
#/usr/sbin/apache2ctl start
#/etc/init.d/apache2 start
