# Compositor（简体中文）

Compositor 是一款适用于 Mac 的免费开源图像编辑器，提供图层、蒙版、选区、变换、绘画、修图、滤镜和 PSD/PSB 导入等功能。项目使用 SwiftUI、AppKit 和 Metal 编写。

本仓库包含简体中文界面资源。应用会依据 macOS 的首选语言显示中文；英文界面仍是默认语言。

汉化分支的上游同步和应用更新方式见 [汉化分支更新说明](UPDATING.zh-CN.md)。

## 使用汉化界面

从源码构建应用后，将 macOS 或该应用的首选语言设为简体中文，然后重新打开 Compositor。中文字符串位于 `Compositor/zh-Hans.lproj/`。

## 安装应用

可从 [Compositor 官网](https://robbietilton.com/compositor) 或 [GitHub Releases](https://github.com/robbietilton/Compositor/releases) 下载应用。也可以使用 Homebrew：

```sh
brew install --cask robbietilton-compositor
```

## 从源码构建

需要 macOS 26 或更新版本，以及 Xcode 26 或更新版本。打开 `Compositor.xcodeproj` 并运行 **Compositor** scheme。

```sh
xcodebuild -project Compositor.xcodeproj -scheme Compositor -destination 'platform=macOS' build
```

更多项目格式说明见 [docs/project-format.md](docs/project-format.md)，AI 和脚本写入 `.comp` 项目的说明见 [docs/writing-comp-files.md](docs/writing-comp-files.md)。

## 许可证

MIT，详见 [LICENSE](LICENSE)。
