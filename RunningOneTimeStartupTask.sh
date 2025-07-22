cat << 'EOF' > ~/myscript.sh
#!/bin/bash
echo "Running one-time startup task..."
touch ~/startup-work-completed.txt
systemctl --user disable myscript.service
rm ~/.config/systemd/user/myscript.service
rm -- "\$0"
EOF
chmod +x ~/myscript.sh
mkdir -p ~/.config/systemd/user
cat << EOF > ~/.config/systemd/user/myscript.service
[Unit]
Description=Run one-time startup script
After=network.target

[Service]
ExecStart=/home/willie/myscript.sh
Type=oneshot
RemainAfterExit=no

[Install]
WantedBy=default.target
EOF
systemctl --user daemon-reload
systemctl --user enable myscript.service
reboot