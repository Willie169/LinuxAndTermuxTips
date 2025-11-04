# Windows Bootloader Recovery on Dual-Boot with Intel VMD SSD

This guide helps recover Windows bootloader on dual-boot with **Intel Rapid Storage Technology (RST) VMD SSDs**.

## 0. Requirements

- USB flash drive (≥8 GB, all data will be erased).
- Another drive of type **FAT32** or **NTFS** (no data will be erased, exFAT/ext4 won't work, hereafter referred to as Another drive).
- Any computer or Live USB of any system.

Or

- Bootable Windows 11 USB.
- Compatible Intel Rapid Storage Technology (RST) VMD Driver (unzipped) in another drive of type **FAT32** or **NTFS** (no data will be erased, exFAT/ext4 won't work, hereafter referred to as Another drive).

## 1. Creating a Bootable Windows 11 USB

If you already have a Bootable Windows 11 USB, skip this section.

On any computer or Live USB of any system:

1. Download the **Windows 11 ISO** from <https://www.microsoft.com/en-us/software-download/windows11>.
2. Insert the USB flash drive.
3. Install and open any software that can flash OS to flash drive, e.g. **balenaEtcher** (Linux, Windows, MacOS), **dd** (Linux), **Rufus** (Windows), **WoeUSB** (Linux).
4. Flash the ISO into the USB flash drive (all data will be erased). The software may show warnings, ignore it and continue flashing.

## 2. Download Intel Rapid Storage Technology (RST) VMD Drive

We need `.inf`, `.sys`, and `.cat` files of the Intel Rapid Storage Technology VMD Driver that is compatible with your CPU generation (e.g. Intel 12th–15th Gen) to be put in Another drive. If you already have it, skip this section.

```
git clone https://github.com/sispt/Intel-Rapid-Storage-Technology-RST-VMD-Drivers-Extracted
```
and copy the driver folder you need to the Another drive. If not sure, copy all driver folders and select the compatible ones according to **Windows 11 Setup** latter.

## 3. Boot from Windows 11 USB

<ol>
<li>Insert the Bootable Windows 11 USB and boot from it.</li>
<li>If <strong>Repair your computer</strong> is visible, click it, follow screen instructions, and ignore below steps. Otherwise, follow below steps.</li>
<li>Click <strong>Browse</strong>, if the Windows partition is not detected, load the compatible Intel Rapid Storage Technology VMD Driver by selecting the folder containing it and pressing <strong>Install</strong> until your Windows partition (assumed (E:) here) appears. Check **Hide drivers that aren't compatible with this computer's harware** and load the drivers that are not hidden if you aren't sure which driver(s) to load. If the Windows partition is detected, skip this step.</li>
<li>Press <code>Shift + F10</code> to open <strong>Command Prompt</strong>.</li>
<li>Type below line by line and press <code>enter</code>, but replace the <code>0</code> and <code>1</code> to correct numbers according to guides beneath the script:
<pre><code>diskpart
list disk
select disk 0
list partition
select partition 1
assign letter=S
exit
</code></pre>
The partition you choose should be about <code>300MB</code> in <code>size</code> when listed, change the disk and partition numbers to find it.</li>
<li>Type below and press <code>enter</code>, but replace <code>E:</code> with actual partition letter:
<pre><code>bcdboot E:\Windows /s S: /f UEFI
</code></pre>
You should see <code>Boot files successfully created</code>.</li>
<li>Close <strong>Command Prompt</strong> and <strong>Windows 11 Setup</strong>. It will reboot automatically. Don't boot from the bootable Windows 11 USB. The bootable Windows 11 USB and the Another drive can be removed.</li>
<li>Boot into Windows. It should load normally.</li>
<li>For users dual-booting with Linux: If Windows is not detected in GRUB menu, run:
<pre><code>sudo update-grub
</code></pre>
in the dual-booting Linux system.</li>
</ol>

## 4. Remove Stale Windows Entry

0. Symptom: After selecting `Windows Boot Manager` in GRUB, two or more entries are shown in a blue menu.
1. Boot into the working Windows (typically first one with a label showing which disk it's in).
2. Open **Command Prompt** as **Administrator**.
3. Run `bcdedit /enum all`.
4. Look for entries under `Windows Boot Loader` with `description` being the same as the stale one in the previous menu (`Windows 10/11/etc.`), `identifier` not being `{current}`, and `device` being `unknown` or non-existent partition.
5. For each entries found in the last step, let its `identifier` be `{###}` (with `{}`), run `bcdedit /delete {###}`.
6. Reboot and check. There's should no longer be multiple entries in Windows Boot Manager.
