#!/bin/bash
set -uo pipefail

# 确保在正确目录下执行
[ -d "openwrt" ] && cd openwrt
mkdir -p package/lean

# 克隆第三方插件（增加容错处理，避免单个仓库404或网络问题导致整个Actions中断）
clone_repo() {
    local url="$1"
    local dest="$2"
    echo "Cloning ${url}..."
    if ! git clone --depth 1 "${url}" "${dest}" 2>/dev/null; then
        echo "⚠️ Warning: Failed to clone ${url}, skipping."
    fi
}

# Add luci-app-adguardhome
clone_repo "https://github.com/rufengsuixing/luci-app-adguardhome.git" "package/lean/luci-app-adguardhome"

# Add luci-app-openclash
mkdir -p package-temp
clone_repo "https://github.com/vernesong/OpenClash.git" "package-temp/OpenClash"
if [ -d "package-temp/OpenClash/luci-app-openclash" ]; then
    cp -rf package-temp/OpenClash/luci-app-openclash package/lean/
fi
rm -rf package-temp

# Add luci-theme-opentomcat
mkdir -p theme-temp
clone_repo "https://github.com/Leo-Jo-My/luci-theme-opentomcat.git" "theme-temp/luci-theme-opentomcat"
rm -rf theme-temp/luci-theme-opentomcat/LICENSE theme-temp/luci-theme-opentomcat/README.md
if [ -d "theme-temp/luci-theme-opentomcat" ]; then
    cp -rf theme-temp/luci-theme-opentomcat package/lean/
fi
rm -rf theme-temp

default_theme='opentomcat'
if [ -f "feeds/luci/modules/luci-base/root/etc/config/luci" ]; then
    sed -i "s/bootstrap/$default_theme/g" feeds/luci/modules/luci-base/root/etc/config/luci || true
fi

# Add luci-app-vssr & lua-maxminddb (替换原失效的 jerrykuku 仓库为可用镜像源并增加容错)
mkdir -p package-temp
clone_repo "https://github.com/jerrykuku/lua-maxminddb.git" "package-temp/lua-maxminddb"
clone_repo "https://github.com/OpenWrt-Actions/luci-app-vssr.git" "package-temp/luci-app-vssr"
clone_repo "https://github.com/kenzok8/small.git" "package-temp/small"

if [ -d "package-temp/small" ]; then
    cp -rf package-temp/small/* package/lean/ 2>/dev/null || true
fi
if [ -d "package-temp/lua-maxminddb" ]; then
    cp -rf package-temp/lua-maxminddb package/lean/
fi
if [ -d "package-temp/luci-app-vssr" ]; then
    cp -rf package-temp/luci-app-vssr package/lean/
fi
rm -rf package-temp
