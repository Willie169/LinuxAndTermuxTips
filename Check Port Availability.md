## Check port availability
### Use `netstat`
Install:
```
pkg install net-tools
```
Android:
```
adb shell netstat
```
Check a port:
```
netstat -an | grep <port_number>
```
Show all activities:
```
netstat -an
```
### Use `ss`
Install:
```
pkg install iproute2
```
Android:
```
adb shell ss
```
Check a port:
```
ss -an | grep <port_number>
```
Show all activities:
```
ss -an
```
Options:
- `-t` for TCP
- `-u` for UDP
- `-l` for listening sockets
- `-n` for numeric output (avoiding DNS lookups)