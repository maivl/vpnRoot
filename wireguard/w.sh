docker stop wireguard
docker rm wireguard

docker run -d --name=wireguard --privileged \
  -e SERVERURL=[2607:f130:0:145::e8e5:a088] \
  -e SERVERPORT=51820 \
  -v /root/wireguard/config:/config \
  -p [2607:f130:0:145::e8e5:a088]:51820:51820/udp \
  lscr.io/linuxserver/wireguard:latest
