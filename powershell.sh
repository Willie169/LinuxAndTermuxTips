sudo apt update
sudo apt upgrade -y
sudo apt install wget -y
source /etc/os-release
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
packages.microsoft.com
sudo apt update
sudo apt install powershell -y
## Start PowerShell:
# pwsh
