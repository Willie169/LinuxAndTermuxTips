# KiCad on Linux

## Installation

Donwload the latest full build from <https://downloads.kicad.org/kicad/linux/explore/stable>.

Run
```
tar -xf kicad-*-x86_64.AppImage.tar
rm kicad-*-x86_64.AppImage.tar
chmod +x kicad-*-x86_64.AppImage
mkdir -p ~/.local/kicad
mv kicad-*-x86_64.AppImage ~/.local/kicad
cat > ~/.local/bin/kicad <<'EOF'
#!/bin/bash
~/.local/kicad/kicad-*-x86_64.AppImage "$@"
EOF
chmod +x ~/.local/bin/kicad
```
