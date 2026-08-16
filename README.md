# 云编译 OpenWrt 固件
原作者 https://github.com/huangqian8/Cloud-OpenWrt


说明：
- 本项目使用 Github Actions 下载 [Lean](https://github.com/coolsnowwolf/lede) 的 `Openwrt` 源码仓库，进行云编译。
- 本项目编译固件适配 x86_64 软路由。
- 本项目不定期更新。

### ImageBuilder 插件配置

`openwrt-image-builder.yml` 会读取仓库根目录的 `.config`，将
`CONFIG_PACKAGE_<包名>=y` 转换为 ImageBuilder 的软件包列表并合并到
`custom_packages`。在 `.config` 中添加软件包后，手动触发
`Build OpenWrt x86_64 (ImageBuilder)` 工作流即可生效。

默认使用本项目 `Cloud OpenWrt` 工作流发布的最新自定义 ImageBuilder，其中
包含 `script.sh` 拉取并编译的第三方插件。首次使用前先运行一次 `Cloud OpenWrt`，
完成后手动触发 `Build OpenWrt x86_64 (ImageBuilder)`。选择 `official` 来源时仅能
使用官方软件源中的包；`*_INCLUDE_*` 等插件内部功能选项会被忽略。

![X86_OpenWRT.png](https://s2.loli.net/2022/05/07/8zrTcZfHqMCGVbo.png)

## 感谢 ❤️
- 源码来源： Lean 的 Openwrt 源码仓库 https://github.com/coolsnowwolf/lede
- 脚本来源： P3TERX 的 使用 GitHub Actions 云编译 OpenWrt https://github.com/P3TERX/Actions-OpenWrt
