cd /var/www/html
Git clone https://github.com/xiao11lam/Alto-Health.git

# give the full privilege on the folder
sudo chown -R Alto-Health/

############################# Install the Dependencies now ####################
# update
sudo apt update


# install apache2
sudo apt install apache2 -y


# install MySQL
sudo apt install mysql-server -y


# Install PHP
sudo apt install php libapache2-mod-php -y


# Install PHP and MySQL package
sudo apt install php-mysql -y


# check the apache2 status, and get to the localhost if shows the page then it works
service apache2 status

# Install vim
sudo apt install vim -y

# change the default render page path, DocumentRoot should be like /var/www/html/Alto-Health
vim /etc/apache2/sites-available/000-default.conf

# Reload the apache2
sudo service apache2 reload


# create DB
create database learnify;

# Load the SQL scripts to the DB
mysql -h localhost -u root -p learnify < ./database/learnify.sql

# if show  Access denied for user 'root'@'localhost'
sudo mysql

	SELECT host,user,authentication_string,plugin FROM mysql.user;

	ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '';

	ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';

	FLUSH PRIVILEGES;

	exit;

##################################### Github ###########################################

# add ssh
ssh-keygen -t rsa -C "xiaozhangslp@gmail.com"

# if I set the name into github, it will generate into the project file!!!!!!!

eval "$(ssh-agent -s)"

ssh-add -K ~/.ssh/id_rsa

# /root/.ssh/id_rsa)
cat ~/.ssh/id_rsa.pub

# token generated from the Github
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
