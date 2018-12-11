if [ ! -x curl ]; then
    apt install curl
fi
TAG_URL="https://api.github.com/repos/xtaci/kcptun/releases/latest"
NEW_VER=`curl -s ${TAG_URL} --connect-timeout 10 | grep "tag_name" | cut -d\" -f4`
NEW_VER=${NEW_VER:1}
mkdir kcptun
cd kcptun
wget https://github.com/xtaci/kcptun/releases/download/v${NEW_VER}/kcptun-linux-amd64-${NEW_VER}.tar.gz
tar xfvz kcptun-linux-amd64-${NEW_VER}.tar.gz
wget https://raw.githubusercontent.com/hxzmm/kcptun/master/install/kcptun.conf
wget -O /etc/init.d/kcptun https://raw.githubusercontent.com/hxzmm/kcptun/master/install/kcptun
chmod 755 /etc/init.d/kcptun; update-rc.d kcptun defaults; service kcptun start
