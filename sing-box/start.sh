  docker run -d --name sing-box \
  --restart unless-stopped \
  -v /home/vpnRoot/sing-box/config.json:/etc/sing-box/config.json:ro \
  -p 8388:8388 \
  ghcr.io/sagernet/sing-box:latest run -c /etc/sing-box/config.json
