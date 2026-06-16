# suppose swap /swap/swapfile
sudo swapoff /swap/swapfile
sudo rm /swap/swapfile
free -h
# > Mem in free -h
sudo btrfs filesystem mkswapfile --size 20G /swap/swapfile
sudo swapon /swap/swapfile
swapon --show

findmnt -no SOURCE /
# example output: /dev/nvme0n1p4
blkid /dev/nvme0n1p4
# there will be a UUID="a uuid string here", let the uuid string be <uuid>
sudo btrfs inspect-internal map-swapfile -r /swap/swapfile
# it will output a number, let it be <offset>

sudo apt update
sudo apt install vim -y

sudo vim /etc/default/grub
# change the line
# GRUB_CMDLINE_LINUX_DEFAULT='quiet splash'
# to
# GRUB_CMDLINE_LINUX_DEFAULT='quiet splash resume=UUID=<uuid> resume_offset=<offset>'
sudo update-grub
sudo update-initramfs -u

sudo reboot

cat /proc/cmdline
# should see the resume=UUID=<uuid> resume_offset=<offset> you set earlier

# hibernate
sudo systemctl hibernate
