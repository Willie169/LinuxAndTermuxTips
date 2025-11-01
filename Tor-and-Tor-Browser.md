# Tor-and-Tor-Browser
## Tor
```
source /etc/os-release
wget -qO- https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | gpg --dearmor | sudo tee /usr/share/keyrings/deb.torproject.org-keyring.gpg >/dev/null
sudo tee /etc/apt/sources.list.d/tor.list > /dev/null <<EOF
deb [arch=amd64 signed-by=/usr/share/keyrings/deb.torproject.org-keyring.gpg] https://deb.torproject.org/torproject.org ${UBUNTU_CODENAME} main
deb-src [arch=amd64 signed-by=/usr/share/keyrings/deb.torproject.org-keyring.gpg] https://deb.torproject.org/torproject.org ${UBUNTU_CODENAME} main
EOF
sudo apt update
sudo apt install tor deb.torproject.org-keyring -y
```
## Tor Browser
Download from <https://www.torproject.org/download>.
```
tar -xvf tor-browser-linux-x86_64-*.tar.xz
rm tor-browser-linux-x86_64-*.tar.xz
cd tor-browser
./start-tor-browser.desktop --detach --headless
cp start-tor-browser.desktop ~/Desktop
```

