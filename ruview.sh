#!/usr/bin/env bash

# Installs [RuView](https://github.com/ruvnet/RuView) from source (Rust), which requires approximately 13.8 GB storage. The binaries are at `~/RuView/v2/target/release`, which has been added to `$PATH` in [`install-tools-first.sh`](install-tools-first.sh). See <https://github.com/ruvnet/RuView/blob/main/docs/user-guide.md> for more information.

cd ~ || exit
sudo apt update
sudo apt install libglib2.0-dev libgtk-3-dev libsoup-3.0-dev libjavascriptcoregtk-4.1-dev libwebkit2gtk-4.1-dev -y
git clone https://github.com/ruvnet/RuView.git
cd RuView || exit
./install.sh --profile rust --yes
cd v2 || exit
cargo fix --bin "sensing-server" -p wifi-densepose-sensing-server --allow-dirty
cd ~ || exit
