# Replace Ubuntu with Linux Mint While Windows Kept

## Download
- Download Linux Mint ISO from <https://linuxmint.com>.
- Download Balena Etcher from <https://etcher.balena.io>.

## Make Bootable USB Drive
1. Plug in a USB, which is to be formatted.
2. `unzip` Balena Etcher, `cd` the extracted folder, and `./balena-etcher --no-sandbox`.
3. Choose the Linux Mint ISO file and the USB in Balena Etcher and make Linux Mint bootable USB drive.

## Installation
1. Restart the computer.
2. Boot into the Linux Mint bootable USB drive.
3. You can try Linux Mint now.
4. Click Install Linux Mint.
5. Follow the instructions. It is recommended to connect to Wi-Fi and choose **Install multimedia codecs**. You may also set a Secure Boot password here.
6. In **Installation type**, if you see **Erase Ubuntu and reinstall Linux Mint**, choose it and go directly to step 9; otherwise, choose **something else**.
7. Find the Ubuntu root partition, usually `ext4` and labeled `Ubuntu ...`. Select it, click change, and check format.
8. At the bottom, make sure **Device for bootloader installation** is set to the EFI partition, usually `/dev/sda1` or `/dev/nvme0n1p1` and labeled Windows Boot Manager.
9. Follow the instructions.
10. If `Remove the installation medium and press ENTER` works, go directly to step 11; otherwise, force restarting the computer.
11. Choose `Enroll MOK` and follow the prompts. Set a password if prompted.
12. `Reboot`, enter the password in the blue MOK manager screen. If not prompted to set a password in step 11, enter the one you set for Secure Boot in step 5.
13. Boot into Linux Mint and follow the instructions. Drivers, APT repositories etc. can be set here.
