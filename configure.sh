#!/bin/bash
# Modify default system settings

# 暂时回滚
#sed -i '/^#src-git luci https:\/\/github.com\/coolsnowwolf\/luci$/s/^#//' feeds.conf.default && sed -i '/^src-git luci https:\/\/github.com\/coolsnowwolf\/luci\.git;openwrt-23\.05$/s/^/#/' feeds.conf.default

# 修改默认IP为192.168.30.1
sed -i 's/192.168.1.1/192.168.30.1/g' package/base-files/files/bin/config_generate 

# Hello World
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# luci-theme-infinityfreedom
echo 'src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git' >>feeds.conf.default

# passwall
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> feeds.conf.default
echo "src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main" >> feeds.conf.default
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> feeds.conf.default

# iStore
#echo "src-git istore https://github.com/linkease/istore;main" >> feeds.conf.default

#smartdns
WORKINGDIR="`pwd`/feeds/packages/net/smartdns"
mkdir $WORKINGDIR -p
rm $WORKINGDIR/* -fr
wget https://github.com/pymumu/openwrt-smartdns/archive/master.zip -O $WORKINGDIR/master.zip
unzip $WORKINGDIR/master.zip -d $WORKINGDIR
mv $WORKINGDIR/openwrt-smartdns-master/* $WORKINGDIR/
rmdir $WORKINGDIR/openwrt-smartdns-master
rm $WORKINGDIR/master.zip

LUCIBRANCH="master" #更换此变量
WORKINGDIR="`pwd`/feeds/luci/applications/luci-app-smartdns"
mkdir $WORKINGDIR -p
rm $WORKINGDIR/* -fr
wget https://github.com/pymumu/luci-app-smartdns/archive/${LUCIBRANCH}.zip -O $WORKINGDIR/${LUCIBRANCH}.zip
unzip $WORKINGDIR/${LUCIBRANCH}.zip -d $WORKINGDIR
mv $WORKINGDIR/luci-app-smartdns-${LUCIBRANCH}/* $WORKINGDIR/
rmdir $WORKINGDIR/luci-app-smartdns-${LUCIBRANCH}
rm $WORKINGDIR/${LUCIBRANCH}.zip

# 替换默认主题
rm -rf package/lean/luci-theme-argon 
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon
