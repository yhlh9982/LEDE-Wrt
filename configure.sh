#!/bin/bash
# Modify default system settings

# iStore
#echo "src-git istore https://github.com/linkease/istore;main" >> feeds.conf.default

# 暂时回滚
#sed -i '/^#src-git luci https:\/\/github.com\/coolsnowwolf\/luci$/s/^#//' feeds.conf.default && sed -i '/^src-git luci https:\/\/github.com\/coolsnowwolf\/luci\.git;openwrt-23\.05$/s/^/#/' feeds.conf.default

# 修改默认IP为192.168.30.1
sed -i 's/192.168.1.1/192.168.30.1/g' package/base-files/files/bin/config_generate 

#修改内核为6.12
#sed -i 's/KERNEL_PATCHVER:=6.6/KERNEL_PATCHVER:=6.12/g' target/linux/x86/Makefile



