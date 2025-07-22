# MCP-Bridge
## Docker
In Alpine run:
```
apk add git
git clone https://github.com/SecretiveShell/MCP-Bridge
cd MCP-Bridge
vi compose.yml
```
Change it to:
```
services:
  mcp-bridge:
    build:
      context: .
    container_name: mcp-bridge
    ports:
      - "8000:8000"
    environment:
      - MCP_BRIDGE__CONFIG__JSON={"inference_server":{"base_url":"https://api.openai.com","api_key":"$OPENAI_API_KEY"},"mcp_servers":{"fetch":{"command":"uvx","args":["mcp-server-fetch"]}}}
      - MCP_BRIDGE__INFERENCE_SERVER__BASE_URL=https://api.openai.com
      - MCP_BRIDGE__INFERENCE_SERVER__API_KEY=$OPENAI_API_KEY
    restart: unless-stopped
```
save and then run:
```
apk add docker-cli-compose
docker-compose up --build -d
```
## Local build
```
git clone https://github.com/SecretiveShell/MCP-Bridge.git
cd MCP-Bridge
echo '{"inference_server":{"base_url":"https://api.openai.com","api_key":"$OPENAI_API_KEY"},"mcp_servers":{"fetch":{"command":"uvx","args":["mcp-server-fetch"]}}}' >> config.json
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python mcp_bridge/main.py
```