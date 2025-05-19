#!/bin/bash

# luci-theme-neobird
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird.git package/otherapp/luci-theme-neobird
# luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

git clone --depth 1 https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp
git clone --depth 1 https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter  #应用过滤(OAF)
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot #微信推送
git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff  #关机
git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/otherapp/mentohust
git clone --depth 1 -b master  https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/unblockneteasemusic  #解除网易云音乐播放限制

#科学插件
git clone --depth 1 https://github.com/immortalwrt/homeproxy.git package/homeproxy   # homeproxy
git clone --depth 1 https://github.com/fw876/helloworld.git package/ssr-plus  # ssr-plus
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash   # OpenClash
git clone --depth 1 https://github.com/Thaolga/luci-app-nekoclash.git package/nekoclash   # nekoclash
git clone --depth 1 https://github.com/nikkinikki-org/OpenWrt-nikki.git package/OpenWrt-nikki   # OpenWrt-nikki
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages   # passwall-packages
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall   # passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2   # passwall2

#smartdns
rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-smartdns
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone --depth 1 https://github.com/pymumu/openwrt-smartdns package/smartdns

#mosdns
find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
#git clone --depth 1 https://github.com/sbwml/luci-app-mosdns -b v5-lua package/mosdns
#git clone --depth 1 https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 23.x feeds/packages/lang/golang
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
