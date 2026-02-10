cd ~
git clone https://github.com/fairy-stockfish/Fairy-Stockfish.git
cd Fairy-Stockfish/src
ARCH=$(uname -m)
if [ "$ARCH" == "x86_64" ]; then
ARCH="x86-64"
elif [ "$ARCH" == "aarch64" ]; then
ARCH="armv8"
elif [ "$ARCH" == "arm" ]; then
ARCH="armv7"
fi
make -j ARCH="$ARCH" profile-build largeboards=yes nnue=yes
## Executable at
# ~/Fairy-Stockfish/src/stockfish
## XBoard
# xboard -fcp=$HOME/Fairy-Stockfish/src/stockfish -smpCores $(nproc) -variant chess
# xboard -fcp=$HOME/Fairy-Stockfish/src/stockfish -smpCores $(nproc) -variant xiangqi