## KDE Partition Manager
1. Plug in bootable USB drive containing Kubuntu.
2. Boot into the bootable USB drive (`Try or Install Kubuntu`).
3. Click `Try Kubuntu`.
4. Click the `K menu` (bottom left).
5. Click `Konsole`.
6. Type `sudo partitionmanager` and press `Enter`.
7. Click the partition labeled your Linux system name (**Label** column starting with kubuntu, etc.). Take note of its `Partition` name (typically similar to `/dev/nvme0n1p6`), which is hereafter referred to as `[partition]`.
8. Click **Resize/Move**, edit `Size`, and click `OK`.
9. Click `Apply` and wait until the operation is done.
10. Close `KDE Partition Manager`.
10. Back to `Konsole`.
11. Type `sudo mount [partition] /mnt`.