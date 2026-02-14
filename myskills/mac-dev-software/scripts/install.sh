#!/usr/bin/env bash
# macOS AI Coding Agent 及开发工具一键安装脚本
# 用法: bash install.sh
set -euo pipefail

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info()  { printf "${GREEN}[INFO]${NC} %s\n" "$*"; }
warn()  { printf "${YELLOW}[WARN]${NC} %s\n" "$*"; }
error() { printf "${RED}[ERROR]${NC} %s\n" "$*"; exit 1; }

# ---------- 步骤 1：安装 Homebrew ----------
if command -v brew >/dev/null 2>&1; then
  info "Homebrew 已安装，跳过。"
else
  info "正在安装 Homebrew ..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # 安装完成后将 brew 加入当前 shell 的 PATH
  if [[ -f /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [[ -f /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
  info "Homebrew 安装完成。"
fi

# ---------- 步骤 2：安装 Node.js ----------
if command -v node >/dev/null 2>&1; then
  info "Node.js 已安装（$(node --version)），跳过。"
else
  info "正在安装 Node.js ..."
  brew install node
  info "Node.js 安装完成。"
fi

# ---------- 步骤 3：安装 NVM ----------
if brew list nvm &>/dev/null; then
  info "NVM 已安装，跳过。"
else
  info "正在安装 NVM ..."
  brew install nvm
  info "NVM 安装完成。"
fi

# ---------- 步骤 4：安装 Maven ----------
if command -v mvn >/dev/null 2>&1; then
  info "Maven 已安装，跳过。"
else
  info "正在安装 Maven ..."
  brew install mvn
  info "Maven 安装完成。"
fi

# ---------- 步骤 5：安装 OpenJDK 21 ----------
# 先检测系统是否已有 Java 21（无论通过何种方式安装）
JAVA_21_INSTALLED=false
if command -v java >/dev/null 2>&1; then
  JAVA_VER="$(java -version 2>&1 | head -1 | grep -oE '"[0-9]+' | tr -d '"')"
  if [[ "$JAVA_VER" == "21" ]]; then
    JAVA_21_INSTALLED=true
  fi
fi

if $JAVA_21_INSTALLED; then
  info "Java 21 已安装，跳过 OpenJDK 21。"
elif brew list openjdk@21 &>/dev/null; then
  info "OpenJDK 21 已通过 Homebrew 安装，跳过。"
else
  info "正在安装 OpenJDK 21 ..."
  brew install openjdk@21
  info "OpenJDK 21 安装完成。"
fi

# 将 Java 路径加入 ~/.zshrc（仅在通过 brew 安装时需要）
BREW_PREFIX="$(brew --prefix)"
JAVA_PATH_LINE="export PATH=\"${BREW_PREFIX}/opt/openjdk@21/bin:\$PATH\""

if $JAVA_21_INSTALLED; then
  info "Java 21 非 Homebrew 安装，无需配置 PATH。"
elif grep -q 'openjdk@21/bin' "$HOME/.zshrc" 2>/dev/null; then
  info "OpenJDK 21 PATH 已配置，跳过。"
else
  echo "" >> "$HOME/.zshrc"
  echo "# OpenJDK 21" >> "$HOME/.zshrc"
  echo "$JAVA_PATH_LINE" >> "$HOME/.zshrc"
  info "已将 OpenJDK 21 路径加入 ~/.zshrc。"
fi

# ---------- 步骤 6：安装 OpenCode ----------
if command -v opencode >/dev/null 2>&1; then
  info "OpenCode 已安装，跳过。"
else
  info "正在安装 OpenCode ..."
  curl -fsSL https://opencode.ai/install | bash
  info "OpenCode 安装完成。"
fi

# ---------- 步骤 7：安装 Codex CLI ----------
if command -v codex >/dev/null 2>&1; then
  info "Codex CLI 已安装，跳过。"
else
  if ! command -v npm >/dev/null 2>&1; then
    error "npm 未找到，请先确保 Node.js 安装成功。"
  fi
  info "正在安装 Codex CLI ..."
  npm i -g @openai/codex
  info "Codex CLI 安装完成。"
fi

# ---------- 步骤 8：安装 Claude Code ----------
if command -v claude >/dev/null 2>&1; then
  info "Claude Code 已安装，跳过。"
else
  info "正在安装 Claude Code ..."
  curl -fsSL https://claude.ai/install.sh | bash
  info "Claude Code 安装完成。"
fi

# ---------- 完成提示 ----------
echo ""
info "=========================================="
info "  所有工具安装完成！"
info "  已安装：Homebrew, Node.js, NVM, Maven,"
info "          OpenJDK 21, OpenCode, Codex CLI,"
info "          Claude Code"
info ""
info "  请运行 source ~/.zshrc 或重启终端"
info "  以使 PATH 配置生效。"
info "=========================================="
