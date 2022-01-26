#!/bin/bash
apt install -y procps
cd /root
openvpn --config conf.ovpn --auth-user-pass auth.txt --up /start-downloader.sh --down "/usr/bin/pkill openvpn"