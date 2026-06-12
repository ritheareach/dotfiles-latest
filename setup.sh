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

# Write a single, correct brew shellenv line
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

# ─── 4. Install tools ────────────────────────────────────────────────────────
info "Installing tools..."
brew install fish starship tmux atuin jq yq lazydocker k9s tldr \
             dust duf glow gping fzf 2>/dev/null || true
brew install --cask kitty 2>/dev/null || true
ok "Tools installed"

# ─── 5. Set fish as default shell ────────────────────────────────────────────
FISH_PATH="$(command -v fish)"
if [[ -z "$FISH_PATH" ]]; then
  die "fish not found after install — something went wrong"
fi

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

# ─── 6. Config directories ───────────────────────────────────────────────────
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

# ─── 7. Symlinks ─────────────────────────────────────────────────────────────
# ─── 7. Fisher plugins ───────────────────────────────────────────────────────
if command -v fisher &>/dev/null && [[ -f "$DOTFILES/fish/fish_plugins" ]]; then
  info "Installing fish plugins..."
  fish -c "fisher update" 2>/dev/null || true
  ok "Fish plugins installed"
elif ! command -v fisher &>/dev/null; then
  info "Installing fisher..."
  fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher" 2>/dev/null || true
  fish -c "fisher update" 2>/dev/null || true
  ok "Fisher and plugins installed"
fi

# ─── 8. Symlinks ─────────────────────────────────────────────────────────────
info "Creating symlinks..."
# Provide the color vars that symlinks.sh uses for output
boldGreen="\033[1;32m"; boldYellow="\033[1;33m"
boldPurple="\033[1;35m"; noColor="\033[0m"
export boldGreen boldYellow boldPurple noColor
# shellcheck source=/dev/null
source "$DOTFILES/zshrc/modules/symlinks.sh"
ok "Symlinks created"

# ─── Done ────────────────────────────────────────────────────────────────────
echo ""
echo -e "${GREEN}  All done!${NC}"
echo ""
echo "  Shell:    fish $($FISH_PATH --version 2>/dev/null | head -1)"
echo "  Prompt:   starship $(starship --version 2>/dev/null | head -1)"
echo "  Dotfiles: $DOTFILES"
echo ""
echo "  Open a new terminal window to start."
echo ""
