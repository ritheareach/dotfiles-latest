#!/bin/bash
# Bootstrap a new macOS machine with dotfiles.
# Safe to run multiple times — all steps are idempotent.
#
# Usage:
#   git clone https://github.com/ritheareach/dotfiles-latest ~/github/dotfiles-latest
#   cd ~/github/dotfiles-latest && bash setup.sh

set -e

DOTFILES="$HOME/github/dotfiles-latest"
REPO="https://github.com/ritheareach/dotfiles-latest"

# ─── colors ──────────────────────────────────────────────────────────────────
RED='\033[0;31m'; GREEN='\033[1;32m'; YELLOW='\033[1;33m'
BLUE='\033[0;34m'; NC='\033[0m'
info()    { echo -e "${BLUE}[·]${NC} $1"; }
ok()      { echo -e "${GREEN}[✓]${NC} $1"; }
warn()    { echo -e "${YELLOW}[!]${NC} $1"; }
die()     { echo -e "${RED}[✗]${NC} $1"; exit 1; }

echo ""
echo "  dotfiles setup"
echo "  ──────────────"
echo ""

# ─── 1. Homebrew ─────────────────────────────────────────────────────────────
if [[ "$(uname -m)" == "arm64" ]]; then
  BREW_BIN="/opt/homebrew/bin/brew"
else
  BREW_BIN="/usr/local/bin/brew"
fi

if ! command -v brew &>/dev/null; then
  info "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$($BREW_BIN shellenv)"
ok "Homebrew $(brew --version | head -1)"

# ─── 2. ~/.zprofile ──────────────────────────────────────────────────────────
ZPROFILE="$HOME/.zprofile"
touch "$ZPROFILE"

# Remove any existing brew shellenv lines (handles duplicates from prior runs)
grep -v "brew shellenv" "$ZPROFILE" > "$ZPROFILE.tmp" && mv "$ZPROFILE.tmp" "$ZPROFILE"
printf '\n# Configure shell for brew\neval "$(%s shellenv)"\n' "$BREW_BIN" >> "$ZPROFILE"
ok "~/.zprofile configured (brew: $BREW_BIN)"

# ─── 3. Clone dotfiles ───────────────────────────────────────────────────────
if [[ ! -d "$DOTFILES/.git" ]]; then
  info "Cloning dotfiles..."
  mkdir -p "$HOME/github"
  git clone "$REPO" "$DOTFILES"
  ok "Dotfiles cloned to $DOTFILES"
else
  ok "Dotfiles already present at $DOTFILES"
fi

# ─── 4. Install CLI tools ────────────────────────────────────────────────────
info "Installing CLI tools..."
brew install \
  fish starship tmux \
  neovim lazygit git-delta \
  atuin fzf fd bat eza ripgrep zoxide \
  jq yq \
  lazydocker k9s \
  tldr dust duf glow gping \
  gh 2>/dev/null || true
ok "CLI tools installed"

# ─── 5. Install casks ────────────────────────────────────────────────────────
info "Installing casks..."
brew install --cask \
  kitty \
  font-jetbrains-mono-nerd-font \
  font-meslo-lg-nerd-font 2>/dev/null || true
ok "Casks installed"

# ─── 6. Set fish as default shell ────────────────────────────────────────────
FISH_PATH="$(command -v fish)"
[[ -z "$FISH_PATH" ]] && die "fish not found after install"

if ! grep -qF "$FISH_PATH" /etc/shells; then
  info "Adding fish to /etc/shells (requires sudo)..."
  echo "$FISH_PATH" | sudo tee -a /etc/shells > /dev/null
fi

if [[ "$SHELL" != "$FISH_PATH" ]]; then
  info "Setting fish as default shell (requires password)..."
  chsh -s "$FISH_PATH"
  ok "Default shell → fish"
else
  ok "Fish is already the default shell"
fi

# ─── 7. Config directories ───────────────────────────────────────────────────
info "Creating config directories..."
mkdir -p \
  ~/.config \
  ~/.config/alacritty \
  ~/.config/kitty \
  ~/.config/wezterm \
  ~/.config/ghostty \
  ~/.config/fish/conf.d \
  ~/.config/neovide \
  ~/.config/rio \
  ~/.config/yazi \
  ~/.config/btop \
  ~/.config/fastfetch \
  ~/.config/sesh \
  ~/github/obsidian_main
ok "Directories ready"

# ─── 8. Symlinks ─────────────────────────────────────────────────────────────
info "Creating symlinks..."
boldGreen="\033[1;32m"; boldYellow="\033[1;33m"
boldPurple="\033[1;35m"; noColor="\033[0m"
export boldGreen boldYellow boldPurple noColor
# shellcheck source=/dev/null
source "$DOTFILES/zshrc/modules/symlinks.sh"
ok "Symlinks created"

# ─── 9. Fisher + fish plugins ────────────────────────────────────────────────
info "Installing fisher and fish plugins..."
if ! fish -c "fisher --version" &>/dev/null; then
  fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher" 2>/dev/null || true
fi
if [[ -f "$DOTFILES/fish/fish_plugins" ]]; then
  fish -c "fisher update" 2>/dev/null || true
fi
ok "Fish plugins ready"

# ─── Done ────────────────────────────────────────────────────────────────────
echo ""
echo -e "${GREEN}  All done!${NC}"
echo ""
echo "  Shell:    $($FISH_PATH --version 2>/dev/null)"
echo "  Prompt:   starship $(starship --version 2>/dev/null | head -1)"
echo "  Dotfiles: $DOTFILES"
echo ""
echo "  Open a new terminal window to start."
echo ""
