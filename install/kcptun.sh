mkdir kcptun
cd kcptun
wget https://github.com/xtaci/kcptun/releases/download/v20180926/kcptun-linux-amd64-20180926.tar.gz
tar xfvz kcptun-linux-amd64-20180810.tar.gz
wget https://raw.githubusercontent.com/hxzmm/kcptun/master/install/kcptun.conf
wget -O /etc/init.d/kcptun https://raw.githubusercontent.com/hxzmm/kcptun/master/install/kcptun
chmod 755 /etc/init.d/kcptun; update-rc.d kcptun defaults; service kcptun start
