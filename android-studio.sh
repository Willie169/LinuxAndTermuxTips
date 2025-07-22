# cd where you want to install Android Studio, assuming ~
cd ~
wget https://redirector.gvt1.com/edged/android/studio/ide-zips/2024.2.2.13/android-studio-2024.2.2.13-linux.tar.gz
rm -f android-studio-2024.2.2.13-linux.tar.gz
tar -xzvf android-studio-2024.2.2.13-linux.tar.gz
cd android-studio/bin
echo 'export PATH="$PREFIX/android-studio/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
./studio.sh
echo '[Desktop Entry]
Version=1.0
Name=Android Studio
Comment=Android Studio IDE
Exec=/home/willie169/android-studio/bin/studio
Icon=/home/willie169/android-studio/bin/studio.png
Terminal=false
Type=Application
Categories=Development;IDE;' > ~/.local/share/applications/android-studio.desktop
chmod +x ~/.local/share/applications/android-studio.desktop
cp ~/.local/share/applications/android-studio.desktop ~/Desktop/android-studio.desktop