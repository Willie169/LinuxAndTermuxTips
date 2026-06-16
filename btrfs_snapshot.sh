sudo btrfs subvolume list /
sudo apt update
sudo apt install timeshift -y

# settings
sudo timeshift-gtk

# snapshot
sudo timeshift --create --comments "post-install"
