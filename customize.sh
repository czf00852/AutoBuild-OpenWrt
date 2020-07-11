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
git clone packages https://github.com/coolsnowwolf/packages
git clone kenzo https://github.com/kenzok8/openwrt-packages
git clone luci https://github.com/coolsnowwolf/luci
git clone helloworld https://github.com/fw876/helloworld
git clone small https://github.com/kenzok8/small
