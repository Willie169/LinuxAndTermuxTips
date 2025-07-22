# Termux Downloader Android (...aka Youtube-Downloader-Android)
pkg up -y -y -y -y
pkg install git -y
git clone https://github.com/DrDelin/Youtube-Downloader-Android/ -b master --single-branch
cd Youtube-Downloader-Android
sh install.sh
# Updates are automatic.
# In case the program not working properly, run:
sh refresh.sh
# Allow Temrux to "Display over other apps"
#Usage:
# Open the desired video or audio or playlist or site in which the video is present.
# Select share option and select Termux from the share list
# Your video / audio / playlist will download (Location: Internal storage of your device -> Termux-Downloader)
# (For Youtube Download) Select video / audio / best -> Select required resolution once, later it is set as default (can be changed if you type "y") -> skip next (unless if you want custom format) -> type "y" if you need subtitle(only available if youtube has).
# (For Youtube music / audio from youtube) Type your favourite audio codec (like mp3, m4a, aac, webm, flac, or etc.) for one time as default (can be changed later) -> Audio will be downloaded in that codec.
# The program closes itself after downloading.
# Code to see history:
python history.py
