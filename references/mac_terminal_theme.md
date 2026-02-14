# oh-my-zsh插件安装

阅读https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/refs/heads/master/README.md再安装  
安装前先备份~/.zshrc，安装时不需要选择覆盖~/.zshrc，选择粘贴脚本到~/.zshrc

### 字体安装

#### 手动安装powerline字体

https://github.com/powerline/fonts

- git clone https://github.com/powerline/fonts.git --depth=1
- cd fonts
- ./install.sh
- cd ..
- rm -rf fonts
  然后在终端中选择任意带有 `for Powerline` 的字体。

#### nerd fonts字体安装

使用Powerlevel10k主题时需要安装MesloLG字体

- ~~brew tap homebrew/cask-fonts~~ # 这个命令不需要了
- brew install --cask font-meslo-lg-nerd-font
  安装完成后，在终端的 **偏好设置 → 配置文件 → 字体** 中选择，如果不选择，有些特殊字符不能正常显示：

> MesloLGS Nerd Font

https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file

#### 用命令行查看已安装字体

运行：

`fc-list | grep -i powerline`

> 若输出中出现例如 `Meslo LG S DZ for Powerline`、`DejaVu Sans Mono for Powerline` 等，说明字体已安装。

> ⚠️ 注意：macOS 默认没有 `fc-list`，如提示找不到命令，可先安装 fontconfig：

`brew install fontconfig`

#### 设置终端字体

以 **iTerm2** 为例：

1. 打开 `Preferences → Profiles → Text`
2. 取消 “Use built-in font”
3. 选择 “MesloLGS NF” 或 “Meslo LG S DZ for Powerline”

若使用 macOS 自带的 Terminal：

1. 打开 `偏好设置 → 配置文件 → 文本`
2. 点击 “字体” 修改为 Powerline 字体

其他主题：
agnoster： https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/agnoster.zsh-theme

---

# powerlevel10k安装到ohmyzsh

### 安装 Powerlevel10k

#### 方法一：安装到oh my zsh - 强烈推荐

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k

### 修改 .zshrc

ZSH_THEME="powerlevel10k/powerlevel10k"

### 步骤3：重启终端

完成以上步骤后，重启shell终端，开始一步步配置powerlevel10k  
如果特殊字符仍无法显示，则检查MesloLG Nerd Font字体是否安装，并且在终端设置

手动配置p10k：p10k configure

踩坑问题1.特殊字符乱码问题
MesloLGS Nerd Font系列字体要安装，brew install font-meslo-lg-nerd-font  
终端设置->文本->字体要选择MesloLGS NF

---

# mac iterm2颜色主题安装：

1. 先克隆仓库：git clone --depth=1 https://github.com/mbadolato/iTerm2-Color-Schemes.git
2. 安装仓库下的几个主题：Solarized，Gruvbox，One Dark / One Light，Ayu，Snazzy

https://sspai.com/post/53008
