sudo apt update
sudo apt upgrade -y
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.musescore.MuseScore -y