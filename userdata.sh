#!/bin/bash
# Update package list
set -e

apt-get update -y

# Install Apache web server
apt-get install apache2 -y

# Start and enable Apache to run on boot
systemctl start apache2
systemctl enable apache2

# Create a simple webpage
echo "<h1>Welcome to my Terraform Deployed Web Server</h1>" > /var/www/html/index.html