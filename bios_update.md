Ensure AC power plugged in and battery enough (typically no less than 50%).

Find manufacturer, product name, and current BIOS version.
```
sudo dmidecode -s system-manufacturer
sudo dmidecode -s system-product-name
sudo dmidecode -s bios-version
```
My output:
```
Micro-Star International Co., Ltd.
Thin 15 B13UC
E16R8IMS.704
```
Go to manufacturer site, mine is <https://www.msi.com/Laptop/Thin-15-B13UX/support?sub_product=Thin-15-B13UC>. Download latest BIOS. Mine is `E16R8IMS.70D.zip`.
```
cd ~/Downloads
unzip E16R8IMS.70D.zip
```
Plug in an USB. **All data will be erased.** Find its name.
```
lsblk -o NAME,SIZE,MODEL,TRAN,MOUNTPOINTS
```
Mine is `/dev/sda`. Format it to FAT32.
```
sudo mkfs.vfat -F32 -I /dev/sda
```
Mount it. Find its directory. Mine is `/run/media/$USER/15B4-9041/`. Copy the BIOS file to it.
```
cp ~/Downloads/E16R8IMS.70D/E16R8IMS.70D /run/media/$USER/15B4-9041/
```
Reboot.
```
sudo reboot
```
Press `Delete` constantly to enter BIOS. Some manufacturers may require different key.

From now on, things may depend on manufacturer and product.

Go to `Advanced > UEFI BIOS Update`. In `Select File system`, select `Acpi(A0341D0, 0)\PCI(14|0)\USB(0,0)\`. In `Select File`, select `E16R8IMS.70D`. Press `Yes`. Press `Ok`. Wait. Press `Proceed with flash update`. Wait. Press any key. Wait.

Check BIOS version.
```
sudo dmidecode -s bios-version
```
