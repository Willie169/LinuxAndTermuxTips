## Ubuntu Distribution Upgrade
If you want LTS version, edit `/etc/update-manager/release-upgrades` and ensure it has line
```
Prompt=lts
```
If you want latest version, edit `/etc/update-manager/release-upgrades` and ensure it has line
```
Prompt=normal
```

```
sudo do-release-upgrade
```
If it shows `Aborting`. Look for notification requiring password authentication for upgrade and authenticate it.