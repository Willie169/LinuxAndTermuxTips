sudo apt install git build-essential cmake ninja-build qtbase5-dev qtbase5-dev-tools libqt5svg5-dev -y
git clone https://github.com/hotfics/Sylvan.git
cd Sylvan
qmake
make
cd ~
mkdir -p ~/.local/share/applications
cat > ~/.local/share/applications/Sylvan.desktop <<EOF
[Desktop Entry]
Type=Application
Name=Sylvan
Comment=Sylvan - GUI for Playing Xiangqi
Exec=$HOME/Sylvan/projects/gui/sylvan
Icon=$HOME/Sylvan/projects/gui/res/icons/app.ico
Terminal=false
Categories=Game;
EOF
## Executable at
# $HOME/Sylvan/projects/gui/sylvan
# $HOME/Sylvan/projects/cli/sylvan-cli
## Configuration files at
# $HOME/.config/EterCyber/Sylvan.ini
# $HOME/.config/EterCyber/engines.json