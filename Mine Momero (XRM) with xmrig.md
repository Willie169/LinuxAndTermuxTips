# Mine Momero (XRM) on Termux
## Setup
```
pkg install git build-essential cmake -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake .. -DWITH_HWLOC=OFF && make -j$(nproc)
```
## Create a .sh file and edit it
```
nano xmrig.sh
```
Paste the following 3 lines:
```
#!/data/data/com.termux/files/usr/bin/bash
cd ~/xmrig/build
./xmrig -o pool.supportxmr.com:3333 -u 48j6iQDeCSDeH46gw4dPJnMsa6TQzPa6WJaYbBS9JJucKqg9Mkt5EDe9nSkES3b8u7V6XJfL8neAPAtbEpmV2f4XC7bdbkv -k -t 1 --cpu-priority=0 --cpu-max-threads-hint=1
```
- The -u is my wallet's address
- -t: Number of CPU threads. Enter -1 or any positive integer. -1 means no limit, and a positive integer means the limit on the number of threads.
- --cpu-priority: CPU priority, you can enter an integer from 0 to 5, 0 means only using idle computing power, 1 means very low priority, 2 means low priority, 3 means normal priority, 4 means high Priority, 5 means extremely high priority.
- --cpu-max-threads-hint: Hint for the maximum of CPU threads, seems to be a percentage, so 1 to 100 is allowed.
## Make it executable:
```
chmod +x xmrig.sh
```
## Run
```
./xmrig.sh
```