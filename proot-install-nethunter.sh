## mb outdated?
## - [`proot-install-nethunter.sh`](proot-install-nethunter.sh) (no longer actively maintained): Installs Kali Nethunter ARM64 proot-distro environment from [https://github.com/sagar040/proot-distro-nethunter](https://github.com/sagar040/proot-distro-nethunter). Follow the screen guide and enter wanted Build ID to install, e.g., `KBDEXKMTE` for everything and `KBDEXKMTD` for default. Boot it with `<build id> [` USER `]` or `proot-distro login <build id> [` USER `]`. Open GUI after logged in with `sudo kgui`. Please go to [https://github.com/sagar040/proot-distro-nethunter](https://github.com/sagar040/proot-distro-nethunter) for more information.
## - [`nethunter.sh`](DOTshortcuts/nethunter.sh) (no longer actively maintained): Boots the Kali Nethunter Proot-distro instance with the alias `kali-default` as user `kali` with `isolated` and `fix-low-ports` options.
pkg update
pkg install git ncurses-utils proot-distro -y
git clone https://github.com/sagar040/proot-distro-nethunter.git
cd proot-distro-nethunter
./install-nethunter.sh --install
