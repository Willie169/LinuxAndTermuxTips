exit
### FAILED
cd ~
source ~/API_KEY.sh
git clone https://github.com/GoodStartLabs/AI_Diplomacy.git
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
source .venv/bin/activate
cd diplomacy/web
cat > .eslintrc << 'EOF'
{
  "plugins": ["react"],
  "parserOptions": {
    "ecmaVersion": 6,
    "sourceType": "module",
    "ecmaFeatures": { "jsx": true }
  },
  "env": {
    "es6": true,
    "browser": true,
    "node": true,
    "mocha": true
  },
  "extends": ["eslint:recommended", "plugin:react/recommended"],
  "rules": {
    "semi": [2, "always", { "omitLastInOneLineBlock": true }],
    "no-prototype-builtins": "off",
    "no-loss-of-precision": "off"
  }
}
EOF
cd src
cat > index.js << 'EOF'
import React from 'react';
import { createRoot } from 'react-dom/client';
import { Page } from "./gui/pages/page";
import 'popper.js';
import 'bootstrap/dist/js/bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import './index.css';

const container = document.getElementById('root');
const root = createRoot(container);
root.render(<Page />);
EOF
cd gui/pages
sed -E -i 's/this\.setState\(([^)]+)\)\.then\(\(\)\s*=>\s*([^)]+)\)/this.setState(\1, () => \2)/g' page.jsx
cd ../../..
npm install .
npm install . --only=dev
export NODE_OPTIONS=--openssl-legacy-provider
npm start &
cd ../..
python -m diplomacy.server.run --port 5000 &
## visit http://localhost:3000
## login with username/password
### kill
# sudo lsof -i -P -n | grep 3000
# kill -9 [PID]
# sudo lsof -i -P -n | grep 5000
# kill -9 [PID]
### next time
# source ~/API_KEY.sh
# cd ~/AI_Diplomacy/diplomacy/web
# export NODE_OPTIONS=--openssl-legacy-provider
# npm start &
# cd ../..
# python -m diplomacy.server.run --port 5000 &
## visit http://localhost:3000
## login with username/password
