#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.32.1/g' package/base-files/files/bin/config_generate
sed -i 's#GO_PKG_TARGET_VARS.*# #g' ./feeds/small/v2dat/Makefile
sed -i 's#GO_PKG_TARGET_VARS.*# #g' ./package/feeds/small/v2dat/Makefile
