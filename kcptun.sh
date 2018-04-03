wget https://raw.githubusercontent.com/hxzmm/kcptun/master/server_linux_amd64
chmod +x server_linux_amd64
wget -O /etc/init.d/kcptun https://raw.githubusercontent.com/hxzmm/kcptun/master/kcptun
chmod 755 /etc/init.d/kcptun ; update-rc.d kcptun defaults ; service kcptun start
