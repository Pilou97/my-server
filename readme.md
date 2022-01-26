# My Ansible Server

This repository is the configuration of my personal server

# How to install ?

 - Install ansible on your machine
 - Then put a vpn configutation in the "sensitive" folder named "conf.ovpn"
 - Put the vpn auth file in "sensitive" folder named "auth.txt"

(The sensitive folder is copied in destination with read-only permission for root user)

```
ansible-playbook -K playbook.yml
```

# What does it install ? 

 - plexmediaserver, the latest version
 - rtorrent and flood behind a vpn
 - vaultwarden (with a backup system)
 - docker

# rtorrent

The rtorrent socket file is located in:
```
/torrent/rpc.socket
```