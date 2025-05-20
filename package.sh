#!/bin/bash
# luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

git clone --depth 1 https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp
git clone --depth 1 https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter  #应用过滤(OAF)
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot #微信推送
git clone --depth 1 https://github.com/sirpdboy/luci-app-poweroffdevice package/luci-app-poweroffdevice  #关机
git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/otherapp/mentohust
git clone --depth 1 https://github.com/feifan1113/luci-app-fileassistant.git package/luci-app-fileassistant
git clone --depth 1 -b master  https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/unblockneteasemusic  #解除网易云音乐播放限制

#科学插件
#git clone --depth 1 https://github.com/immortalwrt/homeproxy.git package/homeproxy   # homeproxy
git clone --depth 1 https://github.com/fw876/helloworld.git package/ssr-plus  # ssr-plus
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash   # OpenClash
#git clone --depth 1 https://github.com/Thaolga/luci-app-nekoclash.git package/nekoclash   # nekoclash
#git clone --depth 1 https://github.com/nikkinikki-org/OpenWrt-nikki.git package/OpenWrt-nikki   # OpenWrt-nikki
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages   # passwall-packages
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall   # passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2   # passwall2

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
