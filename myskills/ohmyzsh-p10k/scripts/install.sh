#!/usr/bin/env bash
# Oh My Zsh + Powerlevel10k 一键安装脚本（macOS）
# 用法: bash install.sh
set -euo pipefail

# 确保 ZSH_CUSTOM 有默认值（兼容 set -u，避免 zsh 下 unbound variable）
ZSH_CUSTOM="${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info()  { echo -e "${GREEN}[INFO]${NC} $*"; }
warn()  { echo -e "${YELLOW}[WARN]${NC} $*"; }
error() { echo -e "${RED}[ERROR]${NC} $*"; exit 1; }

# ---------- 前置检查 ----------
command -v brew >/dev/null 2>&1 || error "未检测到 Homebrew，请先安装: https://brew.sh"
command -v git  >/dev/null 2>&1 || error "未检测到 Git，请先安装: brew install git"

# ---------- 步骤 1：备份 .zshrc ----------
if [[ -f "$HOME/.zshrc" ]]; then
  BACKUP="$HOME/.zshrc.backup.$(date +%Y%m%d%H%M%S)"
  cp "$HOME/.zshrc" "$BACKUP"
  info "已备份 .zshrc 到 $BACKUP"
fi

# ---------- 步骤 2：安装 Oh My Zsh ----------
if [[ -d "$HOME/.oh-my-zsh" ]]; then
  info "Oh My Zsh 已安装，跳过。"
else
  info "正在安装 Oh My Zsh ..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
  info "Oh My Zsh 安装完成。"
fi

# ---------- 步骤 3：安装 MesloLGS Nerd Font ----------
if brew list --cask font-meslo-lg-nerd-font &>/dev/null; then
  info "MesloLGS Nerd Font 已安装，跳过。"
else
  info "正在安装 MesloLGS Nerd Font 字体 ..."
  brew install --cask font-meslo-lg-nerd-font
  info "字体安装完成。请在终端偏好设置中将字体切换为 MesloLGS NF。"
fi

# ---------- 步骤 4：安装 Powerlevel10k ----------
P10K_DIR="$ZSH_CUSTOM/themes/powerlevel10k"
if [[ -d "$P10K_DIR" ]]; then
  info "Powerlevel10k 已安装，跳过。"
else
  info "正在安装 Powerlevel10k 主题 ..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
  info "Powerlevel10k 安装完成。"
fi

# ---------- 步骤 5：安装二进制工具（eza、zoxide） ----------
for tool in eza zoxide; do
  if command -v "$tool" >/dev/null 2>&1; then
    info "$tool 已安装，跳过。"
  else
    info "正在安装 $tool ..."
    brew install "$tool"
    info "$tool 安装完成。"
  fi
done

# ---------- 步骤 6：安装第三方 zsh 插件 ----------
install_plugin() {
  local name="$1"
  local url="$2"
  local dir="$ZSH_CUSTOM/plugins/$name"
  if [[ -d "$dir" ]]; then
    info "插件 $name 已安装，跳过。"
  else
    info "正在安装插件 $name ..."
    git clone --depth=1 "$url" "$dir"
    info "插件 $name 安装完成。"
  fi
}

install_plugin "zsh-autosuggestions"          "https://github.com/zsh-users/zsh-autosuggestions"
install_plugin "zsh-syntax-highlighting"      "https://github.com/zsh-users/zsh-syntax-highlighting.git"
install_plugin "zsh-history-substring-search" "https://github.com/zsh-users/zsh-history-substring-search"

# ---------- 步骤 7：配置 .zshrc ----------

# 配置 OHMYZSH_HOME 环境变量
if grep -q '^export OHMYZSH_HOME=' "$HOME/.zshrc" 2>/dev/null; then
  info "OHMYZSH_HOME 环境变量已配置，跳过。"
else
  # 在文件开头添加（如果有 ZSH_THEME 则插入在其前面，否则追加到文件末尾）
  if grep -q '^ZSH_THEME=' "$HOME/.zshrc" 2>/dev/null; then
    sed -i '' '/^ZSH_THEME=/i\
export OHMYZSH_HOME="$HOME/.oh-my-zsh"\
' "$HOME/.zshrc"
  else
    echo 'export OHMYZSH_HOME="$HOME/.oh-my-zsh"' >> "$HOME/.zshrc"
  fi
  info "已添加 export OHMYZSH_HOME 环境变量配置。"
fi

# 配置 ZSH_THEME
if grep -q 'ZSH_THEME="powerlevel10k/powerlevel10k"' "$HOME/.zshrc" 2>/dev/null; then
  info ".zshrc 中 ZSH_THEME 已设置为 powerlevel10k，跳过。"
else
  if grep -q '^ZSH_THEME=' "$HOME/.zshrc" 2>/dev/null; then
    sed -i '' 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' "$HOME/.zshrc"
    info "已将 ZSH_THEME 修改为 powerlevel10k/powerlevel10k。"
  else
    echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> "$HOME/.zshrc"
    info "已在 .zshrc 末尾添加 ZSH_THEME 配置。"
  fi
fi

# 配置插件列表
TARGET_PLUGINS='plugins=(
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
)'

if grep -q 'zsh-autosuggestions' "$HOME/.zshrc" 2>/dev/null && grep -q 'zsh-syntax-highlighting' "$HOME/.zshrc" 2>/dev/null; then
  info "插件列表已配置，跳过。"
else
  # 替换已有的 plugins=(...) 块，或追加到文件末尾
  if grep -q '^plugins=' "$HOME/.zshrc" 2>/dev/null; then
    # 使用 perl 替换多行 plugins=(...) 块
    perl -i -0pe 's/^plugins=\(.*?\)/'"$(echo "$TARGET_PLUGINS" | sed 's/\//\\\//g')"'/ms' "$HOME/.zshrc"
    info "已替换 .zshrc 中的 plugins 配置。"
  else
    echo "" >> "$HOME/.zshrc"
    echo "$TARGET_PLUGINS" >> "$HOME/.zshrc"
    info "已在 .zshrc 末尾添加 plugins 配置。"
  fi
fi

# 配置 source oh-my-zsh.sh（必须在 plugins 之后）
if grep -q 'source $OHMYZSH_HOME/oh-my-zsh.sh' "$HOME/.zshrc" 2>/dev/null || grep -q 'source "$OHMYZSH_HOME/oh-my-zsh.sh"' "$HOME/.zshrc" 2>/dev/null; then
  info "source oh-my-zsh.sh 已配置，跳过。"
else
  echo '' >> "$HOME/.zshrc"
  echo 'source $OHMYZSH_HOME/oh-my-zsh.sh' >> "$HOME/.zshrc"
  info "已在 plugins 配置之后添加 source \$OHMYZSH_HOME/oh-my-zsh.sh。"
fi

# ---------- 完成提示 ----------
echo ""
info "=========================================="
info "  安装完成！请执行以下操作："
info "  1. 在终端偏好设置中将字体设为 MesloLGS NF"
info "  2. 重启终端，进入 p10k 配置向导"
info "  3. 如需重新配置，运行: p10k configure"
info "=========================================="
