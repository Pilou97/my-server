#!/bin/bash

# start rtorrent
mkdir -p /torrent/session
rm -rf /torrent/session/rtorrent.lock

rtorrent &

# start flood
flood --host=0.0.0.0 --rundir /torrent/flood &