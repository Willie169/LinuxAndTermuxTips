## Connect-to-WPA2-Enterprise-PEAP-MSCHAPV2-Ubuntu
### Solution

Run
```
nmcli con edit 'eduroam'
```
to enter nmcli shell. Replace `eduroam` with your network SSID (e.g. ntu_peap).

In the shell, run:
```
set 802-1x.phase1-auth-flags
```
paste:
```
tls-1-0-enable, tls-1-1-enable, tls-1-2-enable, tls-1-3-enable
```
and run:
```
save
quit
```

Reboot your computer and connect again.

### Source
- <https://bugs.launchpad.net/ubuntu/+source/network-manager/+bug/2084553>
- <https://discourse.gnome.org/t/wifi-connections-with-unsupported-tls-protocols-should-be-handled-better/17540>
