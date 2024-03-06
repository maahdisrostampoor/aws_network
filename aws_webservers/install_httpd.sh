# #!/bin/bash
# yum -y update
# yum -y install httpd cowsay fortune-mod
# myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
# echo "<h1>Welcome to ACS730 Lab4 ! My  IP is $myip</h1><br>Built by Terraform!"  >  /var/www/html/index.html
# sudo systemctl start httpd
# sudo systemctl enable httpd
# echo "<pre>`fortune | cowsay -f moose`</pre>" >> /var/www/html/index.html
#!/bin/bash
yum -y update
yum -y install httpd cowsay fortune-mod
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1>Welcome to ACS730 Lab4 ! My  IP is $myip</h1><br>Built by Terraform!"  >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd

# Add JavaScript function to update date and time
echo "<script>" >> /var/www/html/index.html
echo "function updateDateTime() {" >> /var/www/html/index.html
echo "    var dateTime = new Date();" >> /var/www/html/index.html
echo "    document.getElementById('datetime').innerHTML = 'Current date and time: ' + dateTime;" >> /var/www/html/index.html
echo "}" >> /var/www/html/index.html
echo "setInterval(updateDateTime, 1000);" >> /var/www/html/index.html
echo "</script>" >> /var/www/html/index.html

# Add a placeholder for the date and time
echo "<div id='datetime'></div>" >> /var/www/html/index.html
