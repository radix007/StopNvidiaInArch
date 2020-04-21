#!/usr/bin/env bash
# File : DisableNvidia.sh

chmod +x StopNvidiaInArch.sh
sudo mv StopNvidiaInArch.sh /usr/bin
sudo mv StopNvidiaInArch.service /etc/systemd/system
sudo systemctl enable StopNvidiaInArch.service 
sudo systemctl start StopNvidiaInArch.service
sudo systemctl status StopNvidiaInArch.service
