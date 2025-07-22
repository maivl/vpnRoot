docker run -d \
  --name singbox-cloudflare \
  --restart always \
  -p 443:443 \
  -v /home/vpnRoot/sing-box-cloudflare/config.json:/etc/sing-box/config.json:ro \
  -v /home/vpnRoot/sing-box-cloudflare/fullchain.pem:/etc/ssl/fullchain.pem:ro \
  -v /home/vpnRoot/sing-box-cloudflare/private.key:/etc/ssl/private.key:ro \
  ghcr.io/sagernet/sing-box:latest \
  run -c /etc/sing-box/config.json
