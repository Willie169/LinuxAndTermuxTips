# proot-distro
## Install
```
pkg install proot-distro
```
## List
```
proot-distro list
```
Choose what you want:
## Install (Debian as example)
```
proot-distro install debian
```
## Login
```
proot-distro login debian
```
Options:
- \-\-user: 要登入的使用者
- \-\-fix-low-ports：將低位數的通訊埠重新導向。由於proot的關係，像SSH daemon這種使用低位數22通訊埠的程式會出問題。使用此選項後，SSH的通訊埠會重新導向到2022（即預設通訊埠＋2000）。
- \-\-isolated：不要掛載/sdcard、/data/data/com.termux到proot內部。proot-distro預設會把手機內部儲存空間bind mount到proot系統的/sdcard目錄，也就是說你在proot Linux系統裡面執行rm -rf是能把手機檔案也一併刪除的。此外，Termux會將自身的PATH也掛載進proot內部，比如你要執行Python指令的時候可能會執行到Termux的版本。使用此選項即可確保執行Python指令的時候是執行proot Linux內部的Python。
- \-\-termux-home：將Termux的家目錄掛載到proot Linux內部的家目錄。
- \-\-shared-tmp：將Termux的tmp目錄掛載到proot Linux內部的tmp。
- \-\-bind path:path：額外掛載的路徑，格式為<外部路徑>:<Proot Linux內部路徑>
- \-\-no-link2symlink：停用PRoot link2symlink的延伸模組，關閉proot的硬連結模擬功能。僅限SELinux為permissiv或關閉狀態可使用。
- \-\-no-sysvipc： 停用PRoot的System V IPC模擬。僅在遇到崩潰時使用。
- \-\-no-kill-on-exit：不要在登出的時候殺死所有行程。
## Remove
```
proot-distro remove debian
```
## Clean Cache
```
proot-distro clear-cache
```
## Backup
```
proot-distro backup --output storage/shared/debianbackup.tar.gz debian
```