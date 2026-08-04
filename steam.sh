#!/usr/bin/env bash

wget --tries=100 --retry-connrefused --waitretry=5 https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo apt install ./steam.deb -y
rm steam.deb*
