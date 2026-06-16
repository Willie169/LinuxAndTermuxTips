sudo apt update
sudo apt install systemd-zram-generator -y
echo '[zram0]
zram-size = ram / 2
compression-algorithm = zstd
swap-priority = 100' | sudo tee /etc/systemd/zram-generator.conf >/dev/null

sudo reboot

swapon --show
