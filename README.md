# dotfiles

My personal macOS dotfiles — terminal, shell, prompt, editor, and window manager config.

## Quick setup on a new machine

```bash
git clone https://github.com/ritheareach/dotfiles-latest ~/github/dotfiles-latest
cd ~/github/dotfiles-latest && bash setup.sh
```

`setup.sh` will:

1. Install Homebrew (detects Intel vs Apple Silicon)
2. Configure `~/.zprofile` with the correct brew path
3. Install `fish`, `starship`, `tmux`, and `kitty`
4. Set fish as the default shell
5. Create all required `~/.config/` directories
6. Run `symlinks.sh` to wire everything up

Safe to re-run — every step is idempotent.

## What's configured

| Tool | Config location |
|---|---|
| [Kitty](https://sw.kovidgoyal.net/kitty/) | `kitty/kitty.conf` → `~/.config/kitty/kitty.conf` |
| [Fish](https://fishshell.com/) | `fish/conf.d/starship.fish` → `~/.config/fish/conf.d/starship.fish` |
| [Starship](https://starship.rs/) | `starship-config/active-config.toml` |
| [tmux](https://github.com/tmux/tmux) | `tmux/tmux.conf.sh` → `~/.tmux.conf` |
| [Neovim](https://neovim.io/) | `neovim/neobean/` → `~/.config/neobean` |
| [Zsh](https://www.zsh.org/) | `zshrc/zshrc-file.sh` → `~/.zshrc` |
| [Yabai](https://github.com/koekeishiya/yabai) | `yabai/yabairc` → `~/.yabairc` |
| [SketchyBar](https://github.com/FelixKratz/SketchyBar) | `sketchybar/` → `~/.config/sketchybar` |
| [Karabiner](https://karabiner-elements.pqrs.org/) | `karabiner/` → `~/.config/karabiner` |
| [Lazygit](https://github.com/jesseduffield/lazygit) | `lazygit/config.yml` |
| [btop](https://github.com/aristocratos/btop) | `btop/` → `~/.config/btop` |
| [Yazi](https://github.com/sxyazi/yazi) | `yazi/` → `~/.config/yazi` |

## How symlinks work

`zshrc/modules/symlinks.sh` manages every symlink. It backs up existing files before overwriting, and skips symlinks that are already correct. Running `source ~/.zshrc` re-runs it automatically.

To add a new config to the system:
1. Put the file in this repo
2. Add a `create_symlink` line in `symlinks.sh`
3. Re-run `source ~/.zshrc` or `bash setup.sh`

## Kitty theme

The active theme is loaded from `kitty/active-theme.conf`. To switch themes, replace its contents with any file from `kitty/themes/themes/` (307 themes available). Reload with `ctrl+shift+f5`.

## Starship prompt

The active prompt config is `starship-config/active-config.toml`. A few preset configs are in the same directory (`starship1.toml` → `starship4.toml`, `starship-eldritch.toml`). To switch, copy the desired file over `active-config.toml`.

## Neovim

Multiple configs are available, each as a separate directory under `neovim/`:

```
neovim/neobean/               → NVIM_APPNAME=neobean nvim  (alias: v)
neovim/kickstart.nvim/        → NVIM_APPNAME=kickstart.nvim nvim  (alias: vk)
neovim/lazyvim/               → NVIM_APPNAME=lazyvim nvim  (alias: vl)
neovim/quarto-nvim-kickstarter/ → NVIM_APPNAME=quarto-nvim-kickstarter nvim  (alias: vq)
```

## Directory structure

```
dotfiles-latest/
├── setup.sh                  # bootstrap script for new machines
├── kitty/                    # kitty terminal config + themes
├── fish/conf.d/              # fish shell config fragments
├── starship-config/          # starship prompt configs
├── tmux/                     # tmux config + tools + layouts
├── neovim/                   # multiple neovim configs
├── zshrc/                    # zsh config + modules + symlinks
├── brew/                     # brewfiles by category
├── yabai/                    # tiling window manager
├── sketchybar/               # menu bar replacement
├── karabiner/                # keyboard remapping
├── hammerspoon/              # macOS automation
├── colorscheme/              # shared colorscheme system
└── scripts/                  # misc automation scripts
```
