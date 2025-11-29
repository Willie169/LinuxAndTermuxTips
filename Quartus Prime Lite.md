# Quartus Prime Lite

Source: NTUEE Switching Circuit and Logic Design (SCLD) course.

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

1. In `.bashrc`, add `$HOME/intelFPGA/20.1/modelsim_ase/bin` to `PATH`.
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

## Example: Lab0

1. Create a project directory (e.g., `~/SCLD/Lab0`).
2. Copy `NTUEE_LogicDesign_Lib` folder to it.
3. Open `Quartus Prime Lite Edition`.
4. Click `Files` > `New Project Wizard`.
5. In `What is the working directory for this project?`, browse and choose or paste the project directory in an absolute path (no `~` etc.).
6. Type a project name (e.g., `Lab0`) in `What is the name of this project?`.
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
28. Drag from the output of the AND gate to the output pin to place a wire to connect them.
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
44. Click `Yes` if a pop-up window is shown asking whether to save, and click `Save`. Files with the extension `vwf` are used to store waveforms and can be copied and pasted to simulate existing waveforms.
45. Close the pop-up window of `Simulation Waveform Editor`.
46. Click `File` > `Create / Update` > `Create HDL Design File from Current File…`.
47. Check `Verilog HDL` and click `Ok`.
48. Click `File` > `Save Project`.
49. Close `Quartus Prime Lite Edition`.

## Example: FA4

1. Create a project named `FA4` similar to `Lab0`.
2. Click `File` > `New` > `Block Diagram/Schematic File` > `Ok`.
3. Implement a full adder only with gates under `NTUEE_LogicDesign_Lib`.
4. Right-click a pin, click `Properties`, type the new name in `Pin name(s)`, and click `Ok` to rename the augend, addend, carry-in, sum, and carry-out pins to `x`, `y`, `Ci`, `S`, and `Co` respectively.
5. Save the file as `FullAdder1.bdf`.
6. Click `File` > `New` > `Block Symbol File` > `Ok`.
7. Use the drawing tools, that is, from the bold letter A symbol to the curved line symbol, to draw things on the full adder.
8. Drag from the outer edge to the inner edge to add input pins named `x` and `y` respectively on the downside, input pin named `Ci` on the right side, output pin named `S` on the upside, and output pin named `Co` on the left side.
9. Save the file as `FullAdder1.bsf`. Note that names matter since `.bdf` and `.bsf` with the same name will be automatically linked.
10. Click `File` > `New` > `Block Diagram/Schematic File` > `Ok`.
11. Click the symbol of an AND gate. The full adder module will be shown under `Project` and can be used.
12. Design a four-bit parallel adder with four full adders and use `gnd_1` as a logic 0 input for `Ci` of the LSB full adder. (`vcc_1` can be used as a logic 1 input.)
13. An array of `n` pins named `array_name` can be declared by naming each pin as `array_name[0]` to `array_name[n-1]` or naming a pin as `array_name[n-1..0]`. Both ways, the pin with index `i` is named `array_name[i]`. Declare arrays of input pins `A[3..0]`, `B[3..0]` and an array of output pins `S[3..0]`. Add an output pin `Co` for the output `Co` of the MSB full adder.
14. A pin and a wire with the same name are linked automatically. Link `x`s to `A`, `y`s to `B`, and `S`s to `S` with `[0]` being the LSB.
15. Save the file as `FA4.bdf`.
16. Compile.
17. Copy the given `Lab1_1.vwf` to the project folder.
18. Click `File` > `Open`, select `All Files (*.*)` in `Files of type`, select `Lab1_1.vwf`, and click `Open`. Pins with the same name are connected automatically.
19. Remove `-novopt ` and save.
20. Run functional simulation.
21. Close `Simulation Waveform Editor`.

Optional advanced waveform:

1. Click `File` > `New` > `University Program VWF` > `Ok`.
2. Click `Insert Node or Bus…` > `Node Finder…` > `List`.novopt -
3. Select `A`, `B` of `Type` `Input Group`, `S` of `Type` `Output Group`, and `Co` of `Type` `Output`, and Ok.
4. Set radix in `Edit` > `Radix`.
5. Select some intervals and `Ctrl+Alt+R` to generate random values.
6. Remove `-novopt ` and save to a new `.vwf` file.
7. Run functional simulation.
8. Create Verilog HDL design file from `FullAdder1.bdf` and `FA4.bdf` respectively.

## Verilog Teatbench

Create the testbench file in project directory and run:
```
export PATH="$PATH:$HOME/intelFPGA/20.1/modelsim_ase/bin"
vlib [whatever_folder_name]
vlog [all-Verilog-files-needed]
vsim -c [testbench_file_name_without_.v] -do "run -all; quit"
```
