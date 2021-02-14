#!/bin/bash
yum -y update
yum -y install httpd
MYIP=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h2> Webserver with IP: $MYIP</h2><br>Built by Terraform by external file" > /var/www/html/index.html
service httpd start
chkconfig httpd on