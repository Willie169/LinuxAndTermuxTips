wget -q https://dev.mysql.com/get/mysql-apt-config_0.8.36-1_all.deb
sudo apt install ./mysql-apt-config_0.8.36-1_all.deb -y # ok
rm mysql-apt-config_0.8.36-1_all.deb
sudo apt update
sudo apt install mysql-community-server -y
sudo systemctl start mysql // set password
sudo systemctl enable mysql
