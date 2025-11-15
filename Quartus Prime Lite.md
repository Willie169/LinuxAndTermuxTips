# Quartus Prime Lite

Following NTUEE SCLD standard.

## Download

Download Quartus Prime Lite and ModelSim installation scripts:

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
2. Open `Quartus Prime Lite Edition`.
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

## Block Diagram and Simulation Example: Lab0

1. Create a project directory (e.g. `~/SCLD/Lab0`).
2. Copy `NTUEE_LogicDesign_Lib` folder to it.
3. Open `Quartus Prime Lite Edition`.
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
17. In `Available devices`, click the row with `Name` `EP4CE115F29C7`.
18. Click `Finish`.
19. Click `File` > `New` > `Block Diagram/Schematic File` > `Ok`.
20. Click the symbol of an AND gate.
21. In `Libraries`, expand `./NTUEE_LogicDesign_Lib/elements`, click `and_2`, and click `Ok`.
22. Place the AND gate on the block diagram.
23. Click the downside triangle beside the symbol of 3 input/output pins with `in` on it.
24. Choose `Input` and place two input pins connected to the two inputs of the AND gate.
25. Click the downside triangle beside the symbol of 3 input/output pins with `in` on it.
26. Choose `Output` and place an output pin on the block diagram.
27. Click the symbol of a thin wire in the shape of L rotated 180 degrees.
28. Long-press and move from the output of the AND gate to the output pin to place a wire to connect them.
29. Click the save symbol.
30. Click `Save`.
31. Click the right-sided triangle symbol to start compilation.
32. Wait until it shows `Quartus Prime Full Compilation was successful.`.
33. Click `File` > `New` > `University Program VWF` > `Ok`.
34. Right-click on the empty block in the left part of the pop-up window of `Simulation Waveform Editor`.
35. Click `Insert Node or Bus…` > `Node Finder…` > `List`.
36. Select all three rows in `Nodes Found:` and click `>`.
37. Click `Ok`.
38. Click `Ok`.
39. Click `Simulation` > `Simulation Settings`.
40. Remove `-novopt ` from the fifth line (starting with `vsim`).
41. Click `Save`.
42. Select some intervals in the two input pins and set their value by clicking the symbols labeled with 0, 1, Z on the top.
43. Click `Simulation` > `Run Functional Simulation`.
44. Click `Yes` if a pop-up window is shown asking whether to save and click `Save`. Files with extension `vwf` are used to store waveforms and can be copied and pasted to simulate existing waveforms.
45. Close the pop-up window of `Simulation Waveform Editor`.
46. Click `File` > `Save Project`.
47. Close `Quartus Prime Lite Edition`.
