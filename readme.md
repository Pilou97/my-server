# My Ansible Server

This repository is the configuration of my personal server using Ansible

# How to install ?

 - Install ansible on your machine
 - Then put a vpn configuration in the "sensitive" folder named "conf.ovpn"
 - Put the vpn auth file in "sensitive" folder named "auth.txt"

(The sensitive folder is copied in destination with read-only permission for root user)

```
ansible-playbook playbook.yml -K -i hosts
```

# Features ? 

 - plexmediaserver, the latest version
 - rtorrent and flood behind a vpn
 - vaultwarden and a backup system
 - docker
 - reverse proxy with SSL
 - radarr

# rtorrent

The rtorrent socket file is located in:
```
/torrent/rpc.socket
```

# Configuration

## rtorrent

The rtorrent socket file is located under:
```
/torrent/rpc.socket
```

## Jackett

Add your favorite torrent provider

## Radarr

Configure radarr to use jacket and flood (no rtorrent because I am using unix socket for rtorrent)

## Bitwarden backup

Put a file name rclone.conf insite the sentitive folder