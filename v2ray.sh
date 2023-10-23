bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
#apt-get -y install socat
yum install -y socat
curl https://get.acme.sh | sh
source ~/.bashrc
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --permanent --add-port=60453/tcp
firewall-cmd --reload
#ufw allow 80
#ufw allow 443
#~/.acme.sh/acme.sh --register-account -m xxx@gmail.com
#~/.acme.sh/acme.sh --issue -d nidao.xyz --standalone -k ec-256
#~/.acme.sh/acme.sh --installcert -d nidao.xyz --fullchainpath /usr/local/etc/v2ray/v2ray.crt --keypath /usr/local/etc/v2ray/v2ray.key --ecc
curl -o /usr/local/etc/v2ray/config.json https://raw.githubusercontent.com/nemosc/ss/master/v2ray_config.json
#chmod 644 /usr/local/etc/v2ray/v2ray.key

curl -fsSl https://pkg.cloudflareclient.com/cloudflare-warp-ascii.repo | tee /etc/yum.repos.d/cloudflare-warp.repo
yum install -y cloudflare-warp
warp-cli register
warp-cli set-mode proxy
warp-cli connect
curl ifconfig.me --proxy socks5://127.0.0.1:40000
curl chat.openai.com --proxy socks5://127.0.0.1:40000

service v2ray stop
service v2ray start

yum install -y nginx
curl -o /etc/nginx/nginx.conf https://raw.githubusercontent.com/nemosc/ss/master/nginx.conf

service nginx stop
service nginx start
