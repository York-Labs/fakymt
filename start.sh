cat << CON >> config.json
{
  "inbounds": [
    {
      "port": 2233,
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "edc1344c-f9bc-4a1a-8864-e0f6bb986b62",
            "alterId": 64
          }
        ]
      },
      "streamSettings": {
        "network": "http", 
        "httpSettings": { //
          "path": "/neko"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom",
      "settings": {}
    }
  ]
}
CON
chmod +x rwnmsl
./rwnmsl --config config.json
