# TestDisk Partition Table Recovery

This guide explains how to use **TestDisk** to recover lost or corrupted partitions, without damaging your existing data.

## 0. Requirements

- Bootable Linux USB or installed Linux system (hereafer referred to as bootable Linux) of any distro with TestDisk installable.

> **Important:** Do not write to the disk until you are sure of the recovered partitions.

## 1. TestDisk Partition Table Recovery

1. Boot into the bootable Linux.
2. Install TestDisk (`sudo apt install testdisk` on Debian derivatives).
3. Run: `sudo testdisk`.
4. Select `Create` to make a new log file.
5. TestDisk will list all available disks. Use arrow keys to select the disk you want to recover and press `Enter`.
6. Select Partition Table Type, GPT for modern UEFI systems and Intel/PC for legacy MBR. Usually, TestDisk automatically detects the partition table type. Confirm the selection and press `Enter`.
7. Select `Analyse` and press `Enter`.
8. Select `Quick Search` and press `Enter`.
9. Wait for TestDisk to scan for partitions. If some partitions are missing or incorrect, select Deeper Search.
10. TestDisk will list all partitions it finds, showing, `Start` and `End` sectors, `Size`, `Label` (if available), etc. Navigate through detected partitions:
  - P: List files to check if data is accessible
  - Left/Right arrow keys: Change partition type:
    - `P`: Primary
    - `D`: Deleted
    - `L`: Load backup
    - `T`: Change file system type (only if incorrect)
Change all wanted partitions to primary. Ensure the partition structure has no overlap (`ok` in bottom left) and match your original setup.
11. Select `Write`, press `Enter`, and confirm by typing `Y`. TestDisk will write the new partition table to disk.
12. Close TestDisk and reboot the system. Check that every dual-boot system can be booted correctly.
13. If Windows does not boot, refer to [Windows Bootloader Recovery on Dual-Boot with Intel VMD SSD.md](https://github.com/Willie169/LinuxAndTermuxTips/blob/main/Windows%20Bootloader%20Recovery%20on%20Dual-Boot%20with%20Intel%20VMD%20SSD.md).


Notes:
-  Always verify partitions using `lsblk -f` or `fdisk -l` before writing.
- Keep the original disk untouched until you are confident in the recovered layout.
- If unsure about the detected partition start/end, list files (P) to confirm.
- Recovery can leave unallocated gaps. You can later merge them with other partitions or create new ones.
