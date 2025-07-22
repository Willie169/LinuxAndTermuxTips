Waiting for developer to change things 

## proot-distro Kali Linux
### Source 
https://github.com/sagar040/proot-distro-nethunter
### Install
```
apt update && apt upgrade -y
apt install bc ncurses-utils proot-distro git -y
git clone https://github.com/sagar040/proot-distro-nethunter.git
cd proot-distro-nethunter
bash install-nethunter.sh --install
```
Enter the Build ID, `KBDEXKMTE` for everything.
### Log in
```
nethunter [ BUILD ID ] [ USER ]
```
or
```
proot-distro login BackTrack-< BUILD ID > [ USER ]
```

### GUI
```
sudo kgui
```