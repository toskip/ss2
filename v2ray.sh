bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
curl -o /usr/local/etc/v2ray/config.json https://raw.githubusercontent.com/nemosc/ss/master/v2ray_config.json
service v2ray stop
service v2ray start
