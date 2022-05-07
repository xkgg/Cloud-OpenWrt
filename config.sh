#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_x86=y
CONFIG_TARGET_x86_64=y
CONFIG_TARGET_x86_64_DEVICE_generic=y
CONFIG_LIBMBEDTLS_HAVE_SSE2=y
CONFIG_LIBSODIUM_MINIMAL=y
CONFIG_PACKAGE_aliyundrive-webdav=y
CONFIG_PACKAGE_boost=y
CONFIG_PACKAGE_boost-date_time=y
CONFIG_PACKAGE_boost-program_options=y
CONFIG_PACKAGE_boost-system=y
CONFIG_PACKAGE_coreutils-base64=y
CONFIG_PACKAGE_ip-tiny=y
CONFIG_PACKAGE_ipt2socks=y
CONFIG_PACKAGE_iputils-arping=y
CONFIG_PACKAGE_jq=y
CONFIG_PACKAGE_libdb47=y
CONFIG_PACKAGE_libev=y
CONFIG_PACKAGE_libmaxminddb=y
CONFIG_PACKAGE_libmbedtls=y
CONFIG_PACKAGE_libsodium=y
CONFIG_PACKAGE_libudns=y
CONFIG_PACKAGE_lua-cjson=y
CONFIG_PACKAGE_lua-maxminddb=y
CONFIG_PACKAGE_luasocket=y
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
# CONFIG_PACKAGE_luci-app-adbyby-plus is not set
# CONFIG_PACKAGE_luci-app-arpbind is not set
# CONFIG_PACKAGE_luci-app-autoreboot is not set
# CONFIG_PACKAGE_luci-app-ddns is not set
# CONFIG_PACKAGE_luci-app-filetransfer is not set
# CONFIG_PACKAGE_luci-app-ipsec-vpnd is not set
CONFIG_PACKAGE_luci-app-openclash=y
# CONFIG_PACKAGE_luci-app-ramfree is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui is not set
# CONFIG_PACKAGE_luci-app-ttyd is not set
# CONFIG_PACKAGE_luci-app-turboacc is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING is not set
# CONFIG_PACKAGE_luci-app-unblockmusic is not set
# CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go is not set
# CONFIG_PACKAGE_luci-app-upnp is not set
# CONFIG_PACKAGE_luci-app-vsftpd is not set
CONFIG_PACKAGE_luci-app-vssr=y
# CONFIG_PACKAGE_luci-app-vssr_INCLUDE_ShadowsocksR_Libev_Server is not set
# CONFIG_PACKAGE_luci-app-wireguard is not set
# CONFIG_PACKAGE_luci-app-xlnetacc is not set
CONFIG_PACKAGE_luci-i18n-vssr-zh-cn=y
CONFIG_PACKAGE_luci-theme-opentomcat=y
CONFIG_PACKAGE_shadowsocks-libev-config=y
CONFIG_PACKAGE_shadowsocks-libev-ss-local=y
CONFIG_PACKAGE_shadowsocks-libev-ss-redir=y
CONFIG_PACKAGE_shadowsocksr-libev-ssr-check=y
CONFIG_PACKAGE_shadowsocksr-libev-ssr-local=y
CONFIG_PACKAGE_shadowsocksr-libev-ssr-redir=y
CONFIG_PACKAGE_shadowsocksr-libev-ssr-server=y
CONFIG_PACKAGE_simple-obfs-client=y
CONFIG_PACKAGE_trojan=y
CONFIG_PACKAGE_xray-core=y
CONFIG_PACKAGE_xray-plugin=y
# CONFIG_VMDK_IMAGES is not set
CONFIG_boost-compile-visibility-hidden=y
CONFIG_boost-runtime-shared=y
CONFIG_boost-static-and-shared-libs=y
CONFIG_boost-variant-release=y
# CONFIG_BUSYBOX_CONFIG_FEATURE_IP_LINK is not set
# CONFIG_BUSYBOX_CONFIG_IP is not set
CONFIG_PACKAGE_UnblockNeteaseMusic-Go=y
CONFIG_PACKAGE_adbyby=y
CONFIG_PACKAGE_iptables-mod-ipsec=y
CONFIG_PACKAGE_kmod-crypto-cbc=y
CONFIG_PACKAGE_kmod-crypto-deflate=y
CONFIG_PACKAGE_kmod-crypto-des=y
CONFIG_PACKAGE_kmod-crypto-echainiv=y
CONFIG_PACKAGE_kmod-crypto-hmac=y
CONFIG_PACKAGE_kmod-crypto-kpp=y
CONFIG_PACKAGE_kmod-crypto-lib-blake2s=y
CONFIG_PACKAGE_kmod-crypto-lib-chacha20=y
CONFIG_PACKAGE_kmod-crypto-lib-chacha20poly1305=y
CONFIG_PACKAGE_kmod-crypto-lib-curve25519=y
CONFIG_PACKAGE_kmod-crypto-lib-poly1305=y
CONFIG_PACKAGE_kmod-crypto-md5=y
# CONFIG_PACKAGE_kmod-ip-vti is not set
# CONFIG_PACKAGE_kmod-ip6-vti is not set
CONFIG_PACKAGE_kmod-ipsec=y
CONFIG_PACKAGE_kmod-ipsec4=y
CONFIG_PACKAGE_kmod-ipsec6=y
CONFIG_PACKAGE_kmod-ipt-ipsec=y
CONFIG_PACKAGE_kmod-ipt-offload=y
CONFIG_PACKAGE_kmod-iptunnel4=y
CONFIG_PACKAGE_kmod-iptunnel6=y
CONFIG_PACKAGE_kmod-lib-zlib-deflate=y
CONFIG_PACKAGE_kmod-nf-flow=y
CONFIG_PACKAGE_kmod-tcp-bbr=y
CONFIG_PACKAGE_kmod-udptunnel4=y
CONFIG_PACKAGE_kmod-udptunnel6=y
CONFIG_PACKAGE_kmod-wireguard=y
# CONFIG_PACKAGE_kmod-xfrm-interface is not set
CONFIG_PACKAGE_libwebsockets-full=y
CONFIG_PACKAGE_luci-lib-fs=y
CONFIG_PACKAGE_luci-proto-wireguard=y
CONFIG_PACKAGE_miniupnpd=y
CONFIG_PACKAGE_strongswan=y
CONFIG_PACKAGE_strongswan-charon=y
# CONFIG_PACKAGE_strongswan-charon-cmd is not set
# CONFIG_PACKAGE_strongswan-default is not set
# CONFIG_PACKAGE_strongswan-gencerts is not set
CONFIG_PACKAGE_strongswan-ipsec=y
# CONFIG_PACKAGE_strongswan-isakmp is not set
# CONFIG_PACKAGE_strongswan-libnttfft is not set
# CONFIG_PACKAGE_strongswan-libtls is not set
CONFIG_PACKAGE_strongswan-minimal=y
# CONFIG_PACKAGE_strongswan-mod-addrblock is not set
CONFIG_PACKAGE_strongswan-mod-aes=y
# CONFIG_PACKAGE_strongswan-mod-af-alg is not set
# CONFIG_PACKAGE_strongswan-mod-agent is not set
# CONFIG_PACKAGE_strongswan-mod-attr is not set
# CONFIG_PACKAGE_strongswan-mod-attr-sql is not set
# CONFIG_PACKAGE_strongswan-mod-bliss is not set
# CONFIG_PACKAGE_strongswan-mod-blowfish is not set
# CONFIG_PACKAGE_strongswan-mod-ccm is not set
# CONFIG_PACKAGE_strongswan-mod-chapoly is not set
# CONFIG_PACKAGE_strongswan-mod-cmac is not set
# CONFIG_PACKAGE_strongswan-mod-connmark is not set
# CONFIG_PACKAGE_strongswan-mod-constraints is not set
# CONFIG_PACKAGE_strongswan-mod-coupling is not set
# CONFIG_PACKAGE_strongswan-mod-ctr is not set
# CONFIG_PACKAGE_strongswan-mod-curl is not set
# CONFIG_PACKAGE_strongswan-mod-curve25519 is not set
# CONFIG_PACKAGE_strongswan-mod-des is not set
# CONFIG_PACKAGE_strongswan-mod-dhcp is not set
# CONFIG_PACKAGE_strongswan-mod-dnskey is not set
# CONFIG_PACKAGE_strongswan-mod-duplicheck is not set
# CONFIG_PACKAGE_strongswan-mod-eap-identity is not set
# CONFIG_PACKAGE_strongswan-mod-eap-md5 is not set
# CONFIG_PACKAGE_strongswan-mod-eap-mschapv2 is not set
# CONFIG_PACKAGE_strongswan-mod-eap-radius is not set
# CONFIG_PACKAGE_strongswan-mod-eap-tls is not set
# CONFIG_PACKAGE_strongswan-mod-farp is not set
# CONFIG_PACKAGE_strongswan-mod-fips-prf is not set
# CONFIG_PACKAGE_strongswan-mod-forecast is not set
# CONFIG_PACKAGE_strongswan-mod-gcm is not set
# CONFIG_PACKAGE_strongswan-mod-gcrypt is not set
CONFIG_PACKAGE_strongswan-mod-gmp=y
# CONFIG_PACKAGE_strongswan-mod-gmpdh is not set
# CONFIG_PACKAGE_strongswan-mod-ha is not set
CONFIG_PACKAGE_strongswan-mod-hmac=y
CONFIG_PACKAGE_strongswan-mod-kernel-libipsec=y
CONFIG_PACKAGE_strongswan-mod-kernel-netlink=y
# CONFIG_PACKAGE_strongswan-mod-ldap is not set
# CONFIG_PACKAGE_strongswan-mod-led is not set
# CONFIG_PACKAGE_strongswan-mod-load-tester is not set
# CONFIG_PACKAGE_strongswan-mod-md4 is not set
# CONFIG_PACKAGE_strongswan-mod-md5 is not set
# CONFIG_PACKAGE_strongswan-mod-mgf1 is not set
# CONFIG_PACKAGE_strongswan-mod-mysql is not set
# CONFIG_PACKAGE_strongswan-mod-newhope is not set
CONFIG_PACKAGE_strongswan-mod-nonce=y
# CONFIG_PACKAGE_strongswan-mod-ntru is not set
# CONFIG_PACKAGE_strongswan-mod-openssl is not set
# CONFIG_PACKAGE_strongswan-mod-pem is not set
# CONFIG_PACKAGE_strongswan-mod-pgp is not set
# CONFIG_PACKAGE_strongswan-mod-pkcs1 is not set
# CONFIG_PACKAGE_strongswan-mod-pkcs11 is not set
# CONFIG_PACKAGE_strongswan-mod-pkcs12 is not set
# CONFIG_PACKAGE_strongswan-mod-pkcs7 is not set
# CONFIG_PACKAGE_strongswan-mod-pkcs8 is not set
CONFIG_PACKAGE_strongswan-mod-pubkey=y
CONFIG_PACKAGE_strongswan-mod-random=y
# CONFIG_PACKAGE_strongswan-mod-rc2 is not set
# CONFIG_PACKAGE_strongswan-mod-resolve is not set
# CONFIG_PACKAGE_strongswan-mod-revocation is not set
CONFIG_PACKAGE_strongswan-mod-sha1=y
# CONFIG_PACKAGE_strongswan-mod-sha2 is not set
# CONFIG_PACKAGE_strongswan-mod-sha3 is not set
# CONFIG_PACKAGE_strongswan-mod-smp is not set
CONFIG_PACKAGE_strongswan-mod-socket-default=y
# CONFIG_PACKAGE_strongswan-mod-socket-dynamic is not set
# CONFIG_PACKAGE_strongswan-mod-sql is not set
# CONFIG_PACKAGE_strongswan-mod-sqlite is not set
# CONFIG_PACKAGE_strongswan-mod-sshkey is not set
CONFIG_PACKAGE_strongswan-mod-stroke=y
# CONFIG_PACKAGE_strongswan-mod-test-vectors is not set
# CONFIG_PACKAGE_strongswan-mod-uci is not set
# CONFIG_PACKAGE_strongswan-mod-unity is not set
CONFIG_PACKAGE_strongswan-mod-updown=y
# CONFIG_PACKAGE_strongswan-mod-vici is not set
# CONFIG_PACKAGE_strongswan-mod-whitelist is not set
CONFIG_PACKAGE_strongswan-mod-x509=y
# CONFIG_PACKAGE_strongswan-mod-xauth-eap is not set
CONFIG_PACKAGE_strongswan-mod-xauth-generic=y
CONFIG_PACKAGE_strongswan-mod-xcbc=y
# CONFIG_PACKAGE_strongswan-pki is not set
# CONFIG_PACKAGE_strongswan-scepclient is not set
# CONFIG_PACKAGE_strongswan-swanctl is not set
CONFIG_PACKAGE_ttyd=y
CONFIG_PACKAGE_vsftpd-alt=y
CONFIG_PACKAGE_wireguard-tools=y
# CONFIG_PACKAGE_xfrm is not set
CONFIG_STRONGSWAN_ROUTING_TABLE="220"
CONFIG_STRONGSWAN_ROUTING_TABLE_PRIO="220"
CONFIG_VSFTPD_USE_UCI_SCRIPTS=y
EOF