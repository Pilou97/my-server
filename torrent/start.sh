#!/bin/bash
apt install -y procps
cd /root

conf=/data/`ls /data | sort -R | tail -1`

openvpn --config $conf --auth-user-pass auth.txt --up /start-downloader.sh --down "/usr/bin/pkill openvpn" --dhcp-option DNS 1.1.1.1