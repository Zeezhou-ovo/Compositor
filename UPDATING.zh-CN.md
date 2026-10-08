# 汉化分支更新方式

汉化分支以 `robbietilton/Compositor` 的 `main` 为上游。GitHub Actions 每天检查一次上游，也可以在仓库的 **Actions → Check upstream updates → Run workflow** 手动检查；发现新提交后，会创建或刷新一个同步 PR。

同步 PR 带入上游源码，但不会自动翻译新界面。合并前需要检查 SwiftUI / AppKit 的新增文案，更新 `Compositor/zh-Hans.lproj/Localizable.strings`，处理源文件冲突，再构建并检查中文版。这样每次上游变化都会进入可审阅的更新流程。

## Fork 设置

1. Fork 原项目后，把本地 `zh-Hans` 分支推送到 fork 的 `zh-Hans` 分支，并将它设为 fork 的默认分支。
2. 在 fork 的 **Settings → Actions → General → Workflow permissions** 中允许 GitHub Actions 创建 pull request。
3. 若 GitHub 提示需要启用 Actions，也请启用；定时工作流只会在默认分支上运行。

## 更新安装的应用

这个 fork 默认关闭原项目的 Sparkle 更新器，因为它的更新源发布的是上游应用。每次同步并完成翻译后，从 fork 的源码重新构建并运行应用。

若要让已安装的应用自动更新，需要为 fork 建立独立的 Sparkle appcast、替换更新公钥并提供签名发布包；完成这些配置后，再将 `CompositorEnableUpdater` 和 `SUEnableAutomaticChecks` 设为 `true`。
