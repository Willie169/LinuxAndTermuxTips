#!/usr/bin/env bash

uv tool install --force --python python3.11 open-webui@latest
mkdir -p ~/.config/systemd/user
cat > ~/.config/systemd/user/open-webui.service <<EOF
[Unit]
Description=Open WebUI

[Service]
ExecStart=$HOME/.local/bin/open-webui serve
Environment=DATA_DIR=$HOME/open-webui
Environment=OLLAMA_BASE_URL=http://127.0.0.1:11434
Restart=always
RestartSec=5
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=default.target
EOF
systemctl --user daemon-reload
systemctl --user enable --now open-webui
