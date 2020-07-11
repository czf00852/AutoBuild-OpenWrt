#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.10/g' package/base-files/files/bin/config_generate

#移除不用软件包
rm -rf k3screenctrl package/lean
#添加额外软件包
src-git packages https://github.com/coolsnowwolf/packages
src-git kenzo https://github.com/kenzok8/openwrt-packages
src-git luci https://github.com/coolsnowwolf/luci
src-git routing https://git.openwrt.org/feed/routing.git;openwrt-19.07
#src-git telephony https://git.openwrt.org/feed/telephony.git;openwrt-19.07
src-git helloworld https://github.com/fw876/helloworld
#src-git small https://github.com/kenzok8/small
