## UCSF ChimeraX
### Install dependency (only needed for Ubuntu 25+)
wget -q http://ftp.us.debian.org/debian/pool/main/libx/libxml2/libxml2-16_2.14.5+dfsg-0.2_amd64.deb
sudo dpkg -i libxml2-16_2.14.5+dfsg-0.2_amd64.deb
rm libxml2-16_2.14.5+dfsg-0.2_amd64.deb
wget -q http://ftp.us.debian.org/debian/pool/main/z/z3/libz3-4_4.13.3-1_amd64.deb
sudo dpkg -i libz3-4_4.13.3-1_amd64.deb
rm libz3-4_4.13.3-1_amd64.deb
wget -q http://ftp.us.debian.org/debian/pool/main/l/llvm-toolchain-19/libllvm19_19.1.7-7_amd64.deb
sudo dpkg -i libllvm19_19.1.7-7_amd64.deb
rm libllvm19_19.1.7-7_amd64.deb
wget -q http://ftp.us.debian.org/debian/pool/main/m/mesa/libosmesa6_25.0.7-2_amd64.deb
sudo dpkg -i libosmesa6_25.0.7-2_amd64.deb
rm libosmesa6_25.0.7-2_amd64.deb
### Install UCSF ChimeraX
Download UCSF ChimeraX from: <https://www.rbvi.ucsf.edu/chimerax>.
```
sudo dpkg -i ucsf-chimerax_1.10.1ubuntu24.04_amd64.deb
rm ucsf-chimerax_1.10.1ubuntu24.04_amd64.deb
```
