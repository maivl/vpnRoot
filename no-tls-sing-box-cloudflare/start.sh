docker run -d \
  --name singbox-cloudflare-no-tls \
  --restart always \
  -p 8002:8002 \
  -v /home/vpnRoot/no-tls-sing-box-cloudflare/config.json:/etc/sing-box/config.json:ro \
  ghcr.io/sagernet/sing-box:latest \
  run -c /etc/sing-box/config.json
