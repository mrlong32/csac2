#!/bin/bash

# clone openwrt

git clone -b 	openwrt-23.05 https://github.com/mrlong32/yb_openwrt.git

# version replace

cd openwrt && sed -i 's/-SNAPSHOT/.1/g' include/version.mk

# clone openwrt plugin source

./scripts/feeds update -a && ./scripts/feeds install -a

# openwrt build dependencies

make defconfig 
make download -j8

# make openwrt source

make -j4
