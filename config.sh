#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_cgroupfs-mount=y
CONFIG_PACKAGE_containerd=y
CONFIG_PACKAGE_docker-ce=y
CONFIG_PACKAGE_iptables-mod-extra=y
CONFIG_PACKAGE_kmod-br-netfilter=y
CONFIG_PACKAGE_kmod-dax=y
CONFIG_PACKAGE_kmod-dm=y
CONFIG_PACKAGE_kmod-fs-btrfs=y
CONFIG_PACKAGE_kmod-ikconfig=y
CONFIG_PACKAGE_kmod-ipt-extra=y
CONFIG_PACKAGE_kmod-ipt-offload=y
CONFIG_PACKAGE_kmod-lib-crc32c=y
CONFIG_PACKAGE_kmod-lib-lzo=y
CONFIG_PACKAGE_kmod-lib-raid6=y
CONFIG_PACKAGE_kmod-lib-xor=y
CONFIG_PACKAGE_kmod-lib-zstd=y
CONFIG_PACKAGE_kmod-nf-flow=y
CONFIG_PACKAGE_kmod-nf-ipvs=y
# CONFIG_PACKAGE_kmod-tun is not set
CONFIG_PACKAGE_kmod-veth=y
CONFIG_PACKAGE_libattr=y
CONFIG_PACKAGE_libdevmapper=y
CONFIG_PACKAGE_liblzo=y
# CONFIG_PACKAGE_libminiupnpc is not set
CONFIG_PACKAGE_libmount=y
# CONFIG_PACKAGE_libnatpmp is not set
CONFIG_PACKAGE_libnetwork=y
CONFIG_PACKAGE_luci-app-diskman=y
CONFIG_PACKAGE_luci-app-docker=y
CONFIG_PACKAGE_luci-app-flowoffload=y
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_ShadowsocksR_Server is not set
# CONFIG_PACKAGE_luci-app-uugamebooster is not set
# CONFIG_PACKAGE_luci-app-zerotier is not set
CONFIG_PACKAGE_luci-i18n-docker-zh-cn=y
CONFIG_PACKAGE_luci-i18n-flowoffload-zh-cn=y
CONFIG_PACKAGE_mount-utils=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_runc=y
# CONFIG_PACKAGE_shadowsocksr-libev-server is not set
CONFIG_PACKAGE_smartmontools=y
CONFIG_PACKAGE_tini=y
CONFIG_PACKAGE_uclibcxx=y
# CONFIG_PACKAGE_uugamebooster is not set
# CONFIG_PACKAGE_zerotier is not set
# CONFIG_VMDK_IMAGES is not set
EOF