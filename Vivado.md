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

## Create Project for 臺灣大學電機系電路學實驗

1. Click `Create Project` under `Quick Start`.
2. Click `Next`.
2. Set `Project location` at your will.
2. Click `Next` 4 times.
2. `Search` `xc7a35tlcsg324-2L`.
2. Click the `xc7a35tlcsg324-2L` row.
2. Click `Next`.
2. Click `Finish`.
2. Copy `1 Source` and `2 Constraint` to project location.
2. Click `Add Sources` under `PROJECT MANAGER`.
2. Select `Add or create design sources`.
2. Click `Next`.
2. Click `Add Files`.
2. Go to `1 Source/dont touch`.
2. `Ctrl + A`.
2. Click `OK`.
2. Click `Finish`.
2. Click `Add Sources` under `PROJECT MANAGER`.
2. Select `Add or create constraints`.
2. Click `Next`.
2. Click `Add Files`.
2. Go to `2 Constraint`.
2. Select `EGO1.xdc`.
2. Click `OK`.
2. Click `Finish`.
