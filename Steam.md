### Steam

#### Install Steam

This doesn't work now.

<ol>
<li>If you have run <a href="install-tools.sh"><code>install-tools.sh</code></a>, go to next step; otherwise, run:
<pre><code>cd ~
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install libgl1:i386 -y
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam*.deb
rm steam*.deb
</code></pre></li>
<li>Run <code>steam</code> to update and open it for the first time.</li>
<li>Follow the instructions.</li>
<li>Restart Steam.</li>
<li>Follow the instructions.</li>
</ol>

#### Proton Engine

1. Open Steam.
2. Click `Steam` on the menu bar (upper left corner) and click `Settings`.
3. Click `compatibility`.
4. Toggle on `Enable Steam Play for all other titles` if such option exists.
5. Select the Proton engine you want.
6. Restart Steam.
