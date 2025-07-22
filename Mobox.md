# mobox on termux

install termux x11:
https://github.com/termux/termux-x11
(I use official nightly build instead of mobox's).

curl -s -o ~/x https://raw.githubusercontent.com/olegos2/mobox/main/install && . ~/x

在詢問要裝哪個版本的Box86的時候，輸入2選取Wow64版本
將手機打橫，等待Mobox初始化系統（需要注意有無Cannot Open Display:的錯誤訊息）
退出方法：到Termux終端機按1退出，輸入exit，隨後強制中止Termux和Termux X11 APP。

## Settings

執行Mobox
在Settings → Dynarecs settings ，輸入45，提昇性能與相容性。
在Wineprefix Settings → Change Wine esync mode，選取Enable esync without root的選項。
回到主選單，選取Start Wine
點選左下角Start，安裝DXVK-dev
圖形驅動程式部份，如果你是高通處理器就選最新版Turnip，非高通處理器的請裝VirGL Mesa。
I use: turnip
I don't use this: Install Input Bridge from the apk in the repo
