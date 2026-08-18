#!/bin/bash
cd openwrt
mkdir -p package/lean

# The hosted runner has runc but not Docker's other nested binaries.
# OpenWrt packages those dependencies separately, so do not copy host tools.
mkdir -p feeds/packages/utils/dockerd/patches
cat > feeds/packages/utils/dockerd/patches/999-skip-host-binaries.patch <<'EOF'
--- a/hack/make/binary-daemon
+++ b/hack/make/binary-daemon
@@ -4,1 +4,4 @@
 copy_binaries() {
+	# OpenWrt packages containerd, runc, and tini separately.
+	return
+
EOF

# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package-temp
mv -f package-temp/luci-app-adguardhome package/lean/
rm -rf package-temp
# Add luci-app-openclash
git clone https://github.com/vernesong/OpenClash.git package-temp
mv -f package-temp/luci-app-openclash package/lean/
rm -rf package-temp
# Add luci-theme-opentomcat
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git theme-temp/luci-theme-opentomcat
rm -rf theme-temp/luci-theme-opentomcat/LICENSE
rm -rf theme-temp/luci-theme-opentomcat/README.md
mv -f theme-temp/luci-theme-opentomcat package/lean/
rm -rf theme-temp
default_theme='opentomcat'
sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci
# Add luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package-temp/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package-temp/luci-app-vssr
git clone https://github.com/kenzok8/small.git package-temp/small
cp -r package-temp/small/* package/lean/
mv -f package-temp/lua-maxminddb package/lean/
mv -f package-temp/luci-app-vssr package/lean/
rm -rf package-temp
