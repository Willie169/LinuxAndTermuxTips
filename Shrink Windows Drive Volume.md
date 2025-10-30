## Shrink Windows Drive Volume
1. Press `Win`, type `cmd`, click `run as administrator`, and click `Yes`.
2. Type `powercfg /h on` and press `Enter`.
3. Open `Control Panel`, search for `Power Options`, click `Choose what the power buttons do`, click `Change settings that are currently unavailable`.
4. Uncheck `Turn on fast startup` and reboot your computer if `Turn on fast startup` is checked; otherwise skip this step.
5. Back to `cmd`.
6. Type `powercfg /h off` and press `Enter`.
7. Press `Win + R`.
8. Type `diskmgmt.msc` and press `Enter` to open `Disk management`.
9. Right click `Windows (C:)` drive and click `Shrink Volume`. If any error, follow next steps; otherwise go to step 17 directly.
10. Back to `cmd`.
11. Type `chkdsk C: /f` and press `Enter`. It will say: `> Chkdsk cannot run because the volume is in use... Schedule this volume to be checked the next time the system restarts? (Y/N)`.
12. Type `Y`, press `Enter`.
13. Reboot your computer.
14. Press `Win + R`.
15. Type `diskmgmt.msc` and press `Enter` to open `Disk management`.
16. Right click `Windows (C:)` drive and click `Shrink Volume`.
17. Enter the amount to shrink in MB.
18. Click Shrink.
19. You'll now see `Unallocated` space (in black) on the disk. Do not format that space from Windows. Just leave it unallocated.
