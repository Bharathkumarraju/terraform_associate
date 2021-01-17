#!/bin/bash
yum -y update
yum -y install httpd
MYIP=`curl http://169.254.169.254/latest/meta-data/local-ipv4`


cat <<EOF > /var/www/html/index.html
<html>
<h2>Built by Power of <font color="red">Terraform</font></h2><br>
Server Owner is: ${first_name} ${last_name} <br>
%{ for x in names ~}
Hello to ${x} from ${first_name}<br>
%{ endfor ~}
<p>My PrivateIP: $MYIP
</html>
EOF

service httpd start
chkconfig httpd on