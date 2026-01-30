https://www.binance.com/en/download?pageType=normal

sudo apt install ./binance-amd64-linux.deb -y
sudo sed -i 's|^Exec=/opt/Binance/binance %U|Exec=/opt/Binance/binance --no-sandbox %U|' /usr/share/applications/binance.desktop

alias binance='/opt/Binance/binance --no-sandbox'

