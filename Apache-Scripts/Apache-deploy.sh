sudo dpkg --configure -a
# Update packages and Upgrade system
sudo apt-get update -y && sudo apt-get upgrade -y

## Install AMP
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y


## TWEAKS and Settings
# Permissions
sudo chown -R www-data:www-data /var/www

# Enabling Mod Rewrite, required for WordPress permalinks and .htaccess files
sudo a2enmod rewrite

# Restart Apache
sudo service apache2 restart
