FROM debian:latest

RUN apt update && \
  echo "deb [trusted=yes] https://deb.jesec.io/ devel main" >> /etc/apt/sources.list && \
  apt install -y ca-certificates && \
  apt update && \
  apt -y install \
  rtorrent \
  flood \
  openvpn \
  curl \
  && \
  mkdir -p /dev/net && \
  mknod /dev/net/tun c 10 200 && \
  chmod 600 /dev/net/tun && \
  mkdir -p /data

# RUN apt-get -y install resolvconf
COPY start.sh start.sh
COPY start-downloader.sh start-downloader.sh

COPY .rtorrent.rc /etc/rtorrent/rtorrent.rc

COPY data/* /data/
COPY auth.txt /root/auth.txt

RUN chmod +x start.sh && \
 chmod +x start-downloader.sh

HEALTHCHECK CMD curl --fail ipinfo.io || exit 1

CMD ["./start.sh"]