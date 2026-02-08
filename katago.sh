cd ~
sudo apt install build-essential cmake git ghc libeigen3-dev libopenblas-dev libzip-dev ninja-build wget -y
git clone https://github.com/lightvector/KataGo.git
cd KataGo/cpp
cmake . -G Ninja -DUSE_BACKEND=EIGEN
ninja
cd ../..
mkdir kata-models
cd kata-models
wget https://media.katagotraining.org/uploaded/networks/models/kata1/kata1-b6c96-s175395328-d26788732.txt.gz
## Other models available on:
## https://katagotraining.org/networks
cd ..
## Executable at $HOME/KataGo/cpp/katago. Example:
# $HOME/KataGo/cpp/katago gtp -model $HOME/kata-models/kata1-b6c96-s175395328-d26788732.txt.gz -config /root/KataGo/cpp/configs/gtp_example.cfg
## You may add $HOME/KataGo/cpp/katago to PATH
## You may set default cfg in KataGo/cpp/default_gtp.cfg. Example:
# cp $HOME/KataGo/cpp/configs/gtp_example.cfg $HOME/KataGo/cpp/default_gtp.cfg
