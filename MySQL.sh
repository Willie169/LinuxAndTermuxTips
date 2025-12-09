wget -q https://dev.mysql.com/get/mysql-apt-config_0.8.36-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.36-1_all.deb // ok
sudo apt update
sudo apt install mysql-community-server -y
sudo systemctl start mysql // set password
sudo systemctl enable mysql
