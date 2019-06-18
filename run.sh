apt-get update
apt-get install python-pip python-setuptools m2crypto libsodium-dev
pip install setuptools --upgrade
pip install wheel shadowsocks
ssserver -c shadowsocks.json -d start
