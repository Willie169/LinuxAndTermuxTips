# Vivado on Linux

## Installation

1. Register an AMD user account at <https://www.amd.com/en/registration/create-account.html>.
2. Download `FPGAs_AdaptiveSoCs_Unified_SDI_2025.2_1114_2157_Lin64.bin` at <https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools.html>.
2. `chmod +x FPGAs_AdaptiveSoCs_Unified_SDI_2025.2_1114_2157_Lin64.bin`.
2. `./FPGAs_AdaptiveSoCs_Unified_SDI_2025.2_1114_2157_Lin64.bin`.
2. Click `Next`.
2. Provide your AMD user account.
2. Select `Download and Install Now` and click `Next`.
2. Select `Vivado` and click `Next`.
2. Select `Vivado ML Standard` and click `Next`.
2. Check the devices you need, such as `7 Series`, under `Devices` on top of default and click `Next`.
2. Check all `I Agree` and click `Next`.
2. Select the installation directory, such as `$HOME/Xilinx`, and click `Next`.
2. Click `Install`.
2. `Vivado License Manager` may be launched, close it.
2. Go to the installation directory, `cd Vivado/2025.2/scripts` with `2025.2` replaced with the actual version installed.
2. Run `sudo ./installLibs.sh`.

## USB Permission

Run
```
sudo tee /etc/udev/rules.d/52-xilinx-usb.rules <<'EOF'
SUBSYSTEM=="usb", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6010", MODE="0666", GROUP="plugdev"
EOF
sudo udevadm control --reload-rules
sudo udevadm trigger
sudo usermod -aG plugdev $USER
newgrp plugdev
```

## Create Project

1. Click `Create Project` under `Quick Start`.
2. Click `Next`.
2. Set `Project location` at your will.
2. Click `Next` 4 times.
2. Search your device (e.g., `xc7a35tlcsg324-2L`) and click that row.
2. Click `Next`.
2. Click `Finish`.
2. Copy your source and constraints to project directory.
2. Click `Add Sources` under `PROJECT MANAGER`.
2. Select `Add or create design sources`.
2. Click `Next`.
2. Click `Add Files`.
2. Select your sources (`.v`).
2. Click `OK`.
2. Click `Finish`.
2. Click `Add Sources` under `PROJECT MANAGER`.
2. Select `Add or create constraints`.
2. Click `Next`.
2. Click `Add Files`.
2. Select your constraints (`.xdc`).
2. Click `OK`.
2. Click `Finish`.

## Simulation

1. [Create Project](#create-project).
2. Click `Add Sources` under `PROJECT MANAGER`.
2. Select `Add or create simulation sources`.
2. Click `Next`.
2. Click `Add Files`.
2. Select your simulation sources (`.v`).
2. Click `OK`.
2. Click `Finish`.
2. Select `Hierarchy` under souces.
2. Expand `Simulation Sources` > `sim_1`, right-click your main simulation source, if `Set as Top` is bright, click it; otherwise, skip this step.
2. Click `Run Simulation` under `SIMULATION`.
2. Click `Run Behavioral Simulation`.

## Program Device

1. [USB Permission](#usb-permission).
2. [Create Project](#create-project).
2. Click `Generate Bitstream` under `PROGRAM AND DEBUG`.
2. Click `Yes`.
2. Click `OK`.
2. Wait until `Bitstream Generation Completed` and click `OK`.
2. Click `Open Hardware Manager` under `PROGRAM AND DEBUG`.
2. Click `Open Target` under `Open Hardware Manager` under `PROGRAM AND DEBUG`, and select `Open New Target`.
2. Click `Next` twice.
2. Click your device under `Hardware Targets`.
2. Click `Next`.
2. Click `Finish`.
2. Click `Program Device` under `Open Hardware Manager` under `PROGRAM AND DEBUG`.
2. Click the three dots in the right of `Bitstream file` and select the `<project_name>.runs/impl_1/<file_name>.bit` under project directory.
2. Click `Program`.
2. Test your design on your device.
