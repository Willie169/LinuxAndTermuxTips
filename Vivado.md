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

