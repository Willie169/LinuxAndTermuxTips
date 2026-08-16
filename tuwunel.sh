## Caddy, Tuwunel (setup with a server with name `matrix.lan` at port `8008` with reverse proxy Caddy)
## mb use nginx instead

curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list >/dev/null
sudo chmod o+r /usr/share/keyrings/caddy-stable-archive-keyring.gpg
sudo chmod o+r /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install caddy -y
gh_release -w --wget_option '--tries=100 --retry-connrefused --waitretry=5' matrix-construct/tuwunel "*-release-all-x86_64-$(cat /proc/cpuinfo | grep -Po '(avx|sse)[235]' | sort -u | sed 's/avx5/v4/;s/avx2/v3/;s/sse3/v2/;s/sse2/v1/' | sort | tail -1)-linux-gnu-tuwunel.deb"
sudo apt install -f ./*-release-all-x86_64-*-linux-gnu-tuwunel.deb -y
rm -- *-release-all-x86_64-*-linux-gnu-tuwunel.deb*
sudo chown -R root:root /etc/tuwunel
sudo chmod -R 755 /etc/tuwunel
sudo mkdir -p /var/lib/tuwunel/
sudo chown -R tuwunel:tuwunel /var/lib/tuwunel/
sudo chmod 700 /var/lib/tuwunel/
sudo tee /etc/tuwunel/tuwunel.toml >/dev/null <<'EOF'
[global]
server_name = 'matrix.lan'
database_path = "/var/lib/tuwunel"
port = 8008
max_request_size = 1073741824
allow_registration = false
allow_federation = false
EOF
sudo mkdir -p /etc/caddy/conf.d
sudo tee /etc/caddy/conf.d/tuwunel_caddyfile >/dev/null <<'EOF'
matrix.lan, matrix.lan:8448 {
    # TCP reverse_proxy
    reverse_proxy localhost:8008
    # UNIX socket (alternative - comment out the line above and uncomment this)
    #reverse_proxy unix//run/tuwunel/tuwunel.sock
}
EOF
sudo systemctl enable --now caddy
sudo systemctl enable --now tuwunel
