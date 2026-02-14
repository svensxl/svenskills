---
name: ohmyzsh-p10k
description: 在 macOS 系统上安装和配置 Oh My Zsh 及 Powerlevel10k 主题的完整指南。当用户需要美化终端、安装 oh-my-zsh、配置 powerlevel10k 主题、安装 Nerd Fonts 字体、或配置 iTerm2 颜色主题时使用此 skill。
---

# Oh My Zsh + Powerlevel10k 安装配置指南

在 macOS 上安装 Oh My Zsh 并配置 Powerlevel10k 主题，包括字体安装和终端美化。

## 前置条件

- macOS 系统
- 已安装 [Homebrew](https://brew.sh)
- 已安装 Git
- 使用 zsh 作为默认 shell（macOS 默认）

## 安装流程

按以下顺序执行安装，可使用 `scripts/install.sh` 一键完成，也可手动逐步操作。

### 一键安装

运行 skill 自带的安装脚本：

```bash
scripts/install.sh
```

脚本会自动完成以下所有步骤。如需手动安装，参照下方步骤。

### 手动安装步骤

#### 步骤 1：备份 .zshrc

```bash
cp ~/.zshrc ~/.zshrc.backup.$(date +%Y%m%d%H%M%S)
```

#### 步骤 2：安装 Oh My Zsh

先阅读官方说明以了解最新安装方式：https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/refs/heads/master/README.md

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
```

> **关键**：使用 `--keep-zshrc` 避免覆盖已有的 `.zshrc` 配置。

#### 步骤 3：安装 MesloLGS Nerd Font 字体

Powerlevel10k 主题需要 Nerd Font 字体来正确显示特殊图标和符号。

```bash
brew install --cask font-meslo-lg-nerd-font
```

安装完成后需要在终端中设置字体为 **MesloLGS Nerd Font**（简称 MesloLGS NF）。

**iTerm2 设置方法**：

1. `Preferences → Profiles → Text`
2. 取消勾选 "Use built-in font"
3. 选择 "MesloLGS NF"

**macOS 自带 Terminal 设置方法**：

1. `偏好设置 → 配置文件 → 文本`
2. 点击"字体"，选择 "MesloLGS NF"

#### 步骤 4：安装 Powerlevel10k 主题

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
```

#### 步骤 5：安装插件所需的二进制工具

```bash
brew install eza      # 现代化的 ls 替代工具
brew install zoxide   # 智能 cd 替代工具
```

#### 步骤 6：安装第三方 zsh 插件

```bash
# 命令自动建议
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 命令输入实时语法高亮
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# 按片段搜索历史命令
git clone --depth=1 https://github.com/zsh-users/zsh-history-substring-search \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

#### 步骤 7：配置 .zshrc

确保 `.zshrc` 中包含 `OHMYZSH_HOME` 环境变量（需在 `source` 之前）：

```bash
export OHMYZSH_HOME="$HOME/.oh-my-zsh"
```

将 `ZSH_THEME` 修改为 Powerlevel10k：

```bash
sed -i '' 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
```

将 `.zshrc` 中的 `plugins=(...)` 替换为：

```bash
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  eza
  history-substring-search
  jsontools
  history
  copyfile
  copybuffer
  copypath
  extract
  command-not-found
  zoxide
)
```

在 `plugins` 配置之后，添加 `source` 命令以加载 Oh My Zsh：

```bash
source $OHMYZSH_HOME/oh-my-zsh.sh
```

> **注意**：`source $OHMYZSH_HOME/oh-my-zsh.sh` 必须放在 `plugins=(...)` 之后，因为 Oh My Zsh 在加载时会读取 plugins 变量来决定启用哪些插件。

#### 步骤 8：重启终端并配置 p10k

重启终端后会自动进入 Powerlevel10k 配置向导。如需重新配置：

```bash
p10k configure
```

## 插件功能说明

| 插件                     | 类型   | 功能                          |
| ------------------------ | ------ | ----------------------------- |
| git                      | 内置   | Git 命令别名和补全            |
| zsh-autosuggestions      | 第三方 | 根据历史记录自动建议命令      |
| zsh-syntax-highlighting  | 第三方 | 命令输入实时语法高亮          |
| history-substring-search | 第三方 | 按↑↓键基于片段搜索历史命令    |
| eza                      | 内置   | 为 eza（现代 ls）提供别名     |
| zoxide                   | 内置   | 为 zoxide（智能 cd）提供集成  |
| jsontools                | 内置   | JSON 格式化工具（pp_json 等） |
| history                  | 内置   | 历史命令管理别名              |
| copyfile                 | 内置   | 复制文件内容到剪贴板          |
| copybuffer               | 内置   | Ctrl+O 复制当前命令行到剪贴板 |
| copypath                 | 内置   | 复制当前路径到剪贴板          |
| extract                  | 内置   | 智能解压各种压缩格式          |
| command-not-found        | 内置   | 命令未找到时提示安装方式      |

### 可选：安装 iTerm2 颜色主题

```bash
git clone --depth=1 https://github.com/mbadolato/iTerm2-Color-Schemes.git ~/iTerm2-Color-Schemes
```

推荐主题：Solarized、Gruvbox、One Dark / One Light、Ayu、Snazzy。

在 iTerm2 中导入：`Preferences → Profiles → Colors → Color Presets → Import`，选择 `~/iTerm2-Color-Schemes/schemes/` 目录下的 `.itermcolors` 文件。

### 可选：安装 Powerline 字体（仅在使用 agnoster 等旧主题时需要）

```bash
git clone https://github.com/powerline/fonts.git --depth=1 /tmp/powerline-fonts
cd /tmp/powerline-fonts && ./install.sh
rm -rf /tmp/powerline-fonts
```

## 常见问题排查

**特殊字符显示为乱码**：确认已安装 MesloLGS Nerd Font 字体，并且终端字体已设置为 "MesloLGS NF"。

**验证字体是否安装成功**：

```bash
brew install fontconfig  # 如果 fc-list 命令不存在
fc-list | grep -i meslo
```

**p10k 配置向导未自动启动**：手动运行 `p10k configure`。
