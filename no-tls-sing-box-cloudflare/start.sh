docker run -d \
  --name singbox-cloudflare-no-tls \
  --restart always \
  -p 8002:8002 \
  -v /home/vpnRoot/sing-box-cloudflare-no-tls/config.json:/etc/sing-box/config.json:ro \
  ghcr.io/sagernet/sing-box:latest \
  run -c /etc/sing-box/config.json
