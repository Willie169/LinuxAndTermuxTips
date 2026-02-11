cd ~
git clone https://github.com/yzyray/lizzieyzy.git
cd lizzieyzy
mvn clean package
cd ..
mkdir .lizzieyzy
mkdir -p ~/.local/share/applications
cat > ~/.local/share/applications/lizzieyzy.desktop <<EOF
[Desktop Entry]
Type=Application
Name=LizzieYzy
Comment=LizzieYzy - GUI for Game of Go
Exec=sh -c 'cd $HOME/.lizzieyzy && java -jar "$HOME/lizzieyzy/target/lizzie-yzy2.5.3-shaded.jar"'
Icon=$HOME/lizzieyzy/src/main/resources/assets/logo.png
Terminal=false
Categories=Game;
StartupWMClass=featurecat-lizzie-Lizzie
EOF
## Run with
# cd $HOME/.lizzieyzy && java -jar "$HOME/lizzieyzy/target/lizzie-yzy2.5.3-shaded.jar"
## You may set an alias for it
# alias lizzieyzy='cd $HOME/.lizzieyzy && java -jar "$HOME/lizzieyzy/target/lizzie-yzy2.5.3-shaded.jar"'
