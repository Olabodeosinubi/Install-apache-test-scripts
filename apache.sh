#! /bin/bash
yum update httpd -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Welcome To Oshieset Technology and Enjoy Our Services!!" > /var/www/html/index.html
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
systemctl restart httpd