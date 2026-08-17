#!/data/data/com.termux/files/usr/bin/bash

## 2. **Proot-distro Ubuntu environment with Box64, Wine64, and Winetricks (not invoked by default and no longer actively maintained)**: Installs Ubuntu ARM64 proot-distro environment with alias `$UBUNTUBOX` if `$UBUNTUBOX` is set as a nonempty string, and runs [`box64-wine64-winetricks.sh`](box64-wine64-winetricks.sh) (no longer actively maintained) in it if `$UBUNTUBOX` is set as a nonempty string, machine is of AArch64 (aka ARM64) architecture, and `$UBUNTUBOXINSTALL` is not `0`. See [Invoked VM Setup Scripts](#invoked-vm-setup-scripts) section for more information.
## 2. **Proot-distro Debian environment with Box64, Wine64, and Winetricks (not invoked by default and no longer actively maintained)**: Installs Debian ARM64 proot-distro environment with alias `$DEBIANBOX` if `$DEBIANBOX` is set as a nonempty string, and runs [`box64-wine64-winetricks.sh`](box64-wine64-winetricks.sh) (no longer actively maintained) in it if `$DEBIANBOX` is set as a nonempty string, machine is of AArch64 (aka ARM64) architecture, and `$DEBIANBOXINSTALL` is not `0`. See [Invoked VM Setup Scripts](#invoked-vm-setup-scripts) section for more information.
## - [`box64-wine64-winetricks.sh`](box64-wine64-winetricks.sh) (no longer actively maintained): Installs `box64`, `wine64`, and `winetricks` for running x86\_64 Linux and Windows applications on Debian derivatives ARM64.

cd ~ || exit
dpkg --add-architecture armhf
apt update && apt upgrade -y && apt install gpg wget -y
wget https://ryanfortner.github.io/box64-debs/box64.list -O /etc/apt/sources.list.d/box64.list
wget -qO- https://ryanfortner.github.io/box64-debs/KEY.gpg | gpg --dearmor -o /etc/apt/trusted.gpg.d/box64-debs-archive-keyring.gpg
apt update && apt install box64-android nano cabextract libfreetype6 libfreetype6:armhf libfontconfig libfontconfig:armhf libxext6 libxext6:armhf libxinerama-dev libxinerama-dev:armhf libxxf86vm1 libxxf86vm1:armhf libxrender1 libxrender1:armhf libxcomposite1 libxcomposite1:armhf libxrandr2 libxrandr2:armhf libxi6 libxi6:armhf libxcursor1 libxcursor1:armhf libvulkan-dev libvulkan-dev:armhf zenity mesa-vulkan-drivers mesa-vulkan-drivers:armhf libvulkan1 libvulkan1:armhf tar xz-utils -y
wget https://github.com/Kron4ek/Wine-Builds/releases/download/9.21/wine-9.21-amd64.tar.xz
tar -xvf wine-9.21-amd64.tar.xz
mv wine-9.21-amd64 wine64
echo '#!/bin/bash
export WINEPREFIX=~/.wine64
box64 '"$HOME/wine64/bin/wine64 "'"$@"' >/usr/local/bin/wine64
chmod +x /usr/local/bin/wine64
echo 'export DISPLAY=:0
export BOX64_PATH=~/wine64/bin/
export BOX64_LD_LIBRARY_PATH=~/wine64/lib/i386-unix/:~/wine64/lib/wine/x86_64-unix/:/lib/i386-linux-gnu/:/lib/x86_64-linux-gnu:/lib/aarch64-linux-gnu/:/lib/arm-linux-gnueabihf/:/usr/lib/aarch64-linux-gnu/:/usr/lib/arm-linux-gnueabihf/:/usr/lib/i386-linux-gnu/:/usr/lib/x86_64-linux-gnu
export WINEPREFIX=~/.wine64' >>~/.bashrc
source ~/.bashrc
wine64 wineboot
wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
mv winetricks /usr/local/bin/
echo '#!/bin/bash
export BOX64_NOBANNER=1 WINE=wine64 WINEPREFIX=~/.wine64 WINESERVER=~/wine64/bin/wineserver
wine64 '"/usr/local/bin/winetricks "'"$@"' >/usr/local/bin/winetricks64
chmod +x /usr/local/bin/winetricks64
wget https://github.com/doitsujin/dxvk/releases/download/v2.4.1/dxvk-2.4.1.tar.gz
tar -xvf dxvk-2.4.1.tar.gz
cd dxvk-2.4.1
cp x32/* $WINEPREFIX/drive_c/windows/system32
cp x32/* $WINEPREFIX/drive_c/windows/system32
cp x64/* $WINEPREFIX/drive_c/windows/syswow64
cp x64/*.dll $WINEPREFIX/drive_c/windows/system32
cp x32/*.dll $WINEPREFIX/drive_c/windows/syswow64
cd ~/
rm -rf wine-9.21-amd64.tar.xz dxvk-2.4.1.tar.gz dxvk-2.4.1
exit
