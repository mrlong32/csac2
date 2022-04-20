# OpenWrt firmware for CSAC2

Auto build OpenWrt firmware for CSAC2 via GitHub Actions

开原驱动配置

CONFIG_PACKAGE_kmod-mt7603=y
CONFIG_PACKAGE_kmod-mt7603e=n
CONFIG_PACKAGE_kmod-mt76x2=y
CONFIG_PACKAGE_kmod-mt76x2-common=y
CONFIG_PACKAGE_kmod-mt76x2e=n
CONFIG_PACKAGE_wpad-openssl=y
CONFIG_PACKAGE_wpa-supplicant=y

CONFIG_PACKAGE_luci-app-mtwifi=n

