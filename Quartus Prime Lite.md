# Quartus Prime Lite
Following NTUEE SCLD standard.
## Download
- Quartus Prime Lite: <https://www.intel.com/content/www/us/en/software-kit/868560/intel-quartus-prime-lite-edition-design-software-version-25-1-for-linux.html>.
- ModelSim: <https://www.intel.com/content/www/us/en/software-kit/750666/modelsim-intel-fpgas-standard-edition-software-version-20-1-1.html>.
## Install Quartus Prime Lite

<ol>
<li>Run:
<pre><code>
chmod +x qinst-lite-linux-*std-*.run
./qinst-lite-linux-*std-*.run</code></pre></li>
<li>Select <strong>Cyclone IV device support</strong> on top of the default.</li>
<li>Click <strong>Download & Install</strong>.</li>
</ol>

## Install ModelSim

<ol>
<li>Run:
<pre><code>
chmod +x ModelSimSetup-*-linux.run
./ModelSimSetup-*-linux.run</code></pre></li>
<li>Select <strong>ModelSim - Intel FGPA Starter Edition</strong>.</li>
<li>Download and install.</li>
</ol>

## Install Required 32-bit X11 Libraries

Run:
```
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libxext6:i386 libx11-6:i386 libxft2:i386 libstdc++6:i386 libxrender1:i386 libfontconfig1:i386
```

## Configure ModelSim Path

1. In `.bashrc`, add `~/intelFPGA/20.1/modelsim_ase/bin` to `PATH`.
2. Open **Quartus Prime Lite**.
3. Go to `Tools` > `Options` > `EDA Tool Options`.
4. Set `ModelSim` to `~/intelFPGA/20.1/modelsim_ase/bin`.

## Optional: Desktop

<ol>
<li>Run:
<pre><code>
vim ~/.local/share/applications/quartus.desktop</code></pre></li>
<li>Paste:
<pre><code>
[Desktop Entry]
Type=Application
Name=Intel Quartus Prime 20.1
Comment=Intel FPGA Design Software
Exec=~/altera_lite/25.1std/quartus/bin/quartus
Icon=~/altera_lite/25.1std/quartus/adm/quartusii.png
Terminal=false
Categories=Development;Electronics;</code></pre></li>
<li>Run:
<pre><code>
update-desktop-database ~/.local/share/applications/</code></pre></li>
</ol>

## Example: Lab0

1. Create a project directory (e.g. `~/SCLD/Lab0`).
2. Copy `NTUEE_LogicDesign_Lib` folder to it.
3. Open **Quartus Prime Lite**.
4. Click `Files` > `New Project Wizard`.
5. In `What is the working directory for this project?`, browse and choose or paste the project directory in an absolute path (no `~` etc.).
6. Type a project name (e.g. `Lab0`) in `What is the name of this project?`.
7. Click `Next`.
8. Choose `Empty project`.
9. Click `Next`.
10. Click `User Libraries`.
11. In `Project libraries`, check `Use project's relative path` and paste `./NTUEE_LogicDesign_Lib/elements` to `Project library name`.
12. Click `Add`.
13. Click `Ok`.
14. Click `Next`.
15. In `Device family` > `Family`, choose `Cyclone IV E`.
16. In `Show in 'Available devices' list`, paste `EP4CE115F29C7` to `Name filter`.
17. In `Avaiable devices`, click the row with `Name` `EP4CE115F29C7`.
18. Click `Finish`.
19. 
