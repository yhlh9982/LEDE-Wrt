#!/bin/bash
git clone --depth 1 https://github.com/bigbugcc/OpenwrtApp package/otherapp/OpenwrtApp
git clone --depth 1 https://github.com/destan19/OpenAppFilter package/otherapp/OpenAppFilter
git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/otherapp/luci-app-pushbot

# Theme
# luci-theme-neobird
git clone --depth 1 https://github.com/thinktip/luci-theme-neobird.git package/otherapp/luci-theme-neobird

# Mentohust
git clone --depth 1 https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git package/otherapp/mentohust

# UnblockNeteaseMusic
git clone --depth 1 -b master  https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/unblockneteasemusic

#科学插件
git clone --depth 1 https://github.com/immortalwrt/homeproxy.git package/homeproxy   # homeproxy
git clone --depth 1 https://github.com/fw876/helloworld.git package/ssr-plus  # ssr-plus
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/luci-app-openclash   # OpenClash
git clone --depth 1 https://github.com/Thaolga/luci-app-nekoclash.git package/nekoclash   # nekoclash
git clone --depth 1 https://github.com/nikkinikki-org/OpenWrt-nikki.git package/OpenWrt-nikki   # OpenWrt-nikki
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall-packages   # passwall-packages
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall   # passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2   # passwall2
