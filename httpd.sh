#!/bin/bash
# package updates
sudo apt-get update
# apache installation, enabling and status check
sudo apt -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active
# acquiring the ip address for access to the web server
echo "this is the public IP address:" `curl -4 icanhazip.com`
# adding the needed permissions for creating and editing the index.html file
sudo chown -R $USER:$USER /var/www
# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Level It Up</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1>Briykhovetskiy/h1>' >> index.html
echo '<h3>Red Team</h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
