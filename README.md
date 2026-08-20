# 云编译 OpenWrt 固件
原作者 https://github.com/huangqian8/Cloud-OpenWrt


说明：
- `cloud-openwrt.yaml` 保持使用 [Lean](https://github.com/coolsnowwolf/lede) 的 `master` 分支；ImageBuilder 工作流使用官方 OpenWrt `v24.10.8`。
- 本项目编译固件适配 x86_64 软路由。
- 本项目不定期更新。

### ImageBuilder 插件配置

`openwrt-image-builder.yml` 会先使用仓库根目录的 `.config` 生成官方 OpenWrt 的实际
配置，再将其中可用的 `CONFIG_PACKAGE_<包名>=y` 转换为 ImageBuilder 的软件包列表并合并到
`custom_packages`。在 `.config` 中添加软件包后，手动触发
`Build OpenWrt x86_64 (ImageBuilder)` 工作流即可生效。
手动输入或配置中不存在于当前 ImageBuilder 的软件包会被提示并跳过。

`Build OpenWrt x86_64 (ImageBuilder)` 工作流会独立拉取源码，执行 `script.sh` 和
`config.sh`，编译第三方插件及独立 ImageBuilder，然后继续生成最终固件。
`Cloud OpenWrt` 仍可单独用于完整源码固件构建；`*_INCLUDE_*` 等插件内部功能选项
会被忽略。

`files/` 用于保存需要写入最终固件的默认文件，目录结构与 OpenWrt 根目录一致，例如
`files/etc/config/network` 会写入固件的 `/etc/config/network`。

![X86_OpenWRT.png](https://s2.loli.net/2022/05/07/8zrTcZfHqMCGVbo.png)

## 感谢 ❤️
- 源码来源：Lean `master` 与官方 OpenWrt `v24.10.8`
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
