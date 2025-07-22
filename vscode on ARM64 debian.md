# vscode on ARM64 debian (Not working with proot on non-rooted Android devices)
# Install
# Go to https://packages.debian.org/bookworm/arm64/libxkbfile1/download and download from one of the mirrors, I used http://ftp.tw.debian.org/debian/pool/main/libx/libxkbfile/libxkbfile1_1.1.0-1_arm64.deb
cd ~/Downloads
sudo apt install ./libxkbfile1_1.1.0-1_arm64.deb
sudo apt install code
# Run
code --no-sandbox --user-data-dir=~
