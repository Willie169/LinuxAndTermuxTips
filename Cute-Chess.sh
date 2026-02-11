sudo apt install git build-essential cmake ninja-build qtbase5-dev qtbase5-dev-tools libqt5svg5-dev -y
git clone https://github.com/cutechess/cutechess.git
cd cutechess
mkdir build
cd build
cmake -G Ninja ..
ninja
mkdir -p ~/.local/share/applications
cat > ~/.local/share/applications/cutechess.desktop <<EOF
[Desktop Entry]
Type=Application
Name=Cute Chess
Comment=Cute Chess - GUI for Playing Chess
Exec=$HOME/cutechess/build/cutechess
Icon=$HOME/cutechess/projects/gui/res/icons/cutechess_128x128.png
Terminal=false
Categories=Game;
EOF
## Executable at
# $HOME/cutechess/build/cutechess
# $HOME/cutechess/build/cutechess-cli
## Configuration files at
# $HOME/.config/cutechess/cutechess.ini
# $HOME/.config/cutechess/engines.json