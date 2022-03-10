#! /bin/bash
yum update httpd -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "MWelcome To Oshieset Technology and Enjoy Our Services, don't forget to come back" > /var/www/html/index.html
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
systemctl restart httpd
