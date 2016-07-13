#!/bin/bash
# insall apache web server
pacman --noconfirm -S apache
# edit /etc/httpd/conf/extra/httpd-mpm.conf
systemctl start httpd.service
systemctl enable httpd.service
# install mariadb as a mysql implementation
pacman -S mariadb mariadb-clients libmariadbclient
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl start mysqld.service
systemctl enable mysqld.service
mysql_secure_installation
# install php and some useful extensions
pacman -S php php-apache php-mcrypt php-xsl xdebug php-intl php-gd
# edit the followng config files to enable required extensions, apache modules (like mod_rewrite etc)
#/etc/php/php.ini
#/etc/php/conf.d/xdebug.ini
#/etc/httpd/conf/httpd.conf
#/etc/httpd/conf/extra/httpd-vhosts.conf
#/etc/httpd/conf/extra/httpd-default.conf
#/etc/httpd/conf/extra/httpd-mpm.conf
mkdir /srv/http/instances
# add +x permissions to your home directory if needed ;)
systemctl restart httpd.service

