#!/bin/bash
sudo su -
yum install -y httpd
cat > /var/www/html/index.html << end
<html><body><h1>Terraform-WEB-2</h1></body></html>
end
systemctl start httpd