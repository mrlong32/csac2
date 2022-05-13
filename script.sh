#!/bin/bash

# clone openwrt

git clone -b openwrt-22.03 https://git.openwrt.org/openwrt/openwrt.git

# version replace

cd openwrt && sed -i 's/-SNAPSHOT/.1/g' include/version.mk

# clone openwrt plugin source

./scripts/feeds update -a && ./scripts/feeds install -a

git clone https://github.com/gw826943555/openwrt-vlmcsd.git package/openwrt-vlmcsd

# copy build file and config

cp csac.config .config

# openwrt build dependencies

make defconfig 
make menuconfig
make download -j8

# make openwrt source

make -j4
