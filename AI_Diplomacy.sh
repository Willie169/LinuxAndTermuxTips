cd ~
source ~/API_KEY.sh
git clone https://github.com/GoodStartLabs/AI_Diplomacy.git
git clone https://github.com/diplomacy/diplomacy.git
cd AI_Diplomacy
cat > .env << 'EOF'
OPENAI_API_KEY=$OPENAI_API_KEY
ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY
GEMINI_API_KEY=$GEMINI_API_KEY
DEEPSEEK_API_KEY=$DEEPSEEK_API_KEY
OPENROUTER_API_KEY=$OPENROUTER_API_KEY
EOF
cd ai_animation
npm install
cd ..
uv sync
rm -rf diplomacy
cp -r ~/diplomacy/diplomacy .
rm -rf ~/diplomacy
source .venv/bin/activate
cd diplomacy/web
npm install .
npm install . --only=dev
export NODE_OPTIONS=--openssl-legacy-provider
npm start &
cd ../..
python3 -m diplomacy.server.run --port 5000 &
# visit http://localhost:3000
# login with username/password
## kill
: <<'COMMENT'
sudo lsof -i -P -n | grep 3000
kill -9 [PID]
sudo lsof -i -P -n | grep 5000
kill -9 [PID]
COMMENT
### next time
: <<'COMMENT'
source ~/API_KEY.sh
cd ~/AI_Diplomacy
source .venv/bin/activate
cd diplomacy/web
export NODE_OPTIONS=--openssl-legacy-provider
npm start &
cd ../..
python3 -m diplomacy.server.run --port 5000 &
COMMENT
# visit http://localhost:3000
# login with username/password
