# Run Applications for x86_64 Linux with Box64 on Non-x86_64 Linux Systems, 
## Box64
Box64 lets you run x86_64 Linux programs (such as games) on non-x86_64 Linux systems, like ARM (host system needs to be 64-bit little-endian).
### Install Box64
```
apt install git
apt install cmake
git clone https://github.com/ptitSeb/box64
cd box64
mkdir build; cd build; cmake .. -D ARM64=1 -DCMAKE_C_COMPILER=gcc -DBAD_SIGNAL=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo
make -j$(nproc)
sudo make install
```
### Use Box64
```
box64 ./your-32bit-application
```
### Optional: Set Box64 to Load Before Any Other Libraries When Running an Application
```
export LD_PRELOAD=/usr/local/lib/box64/box64.so
```