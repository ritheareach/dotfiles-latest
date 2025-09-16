# Neovim LazyVim - Quick Reference

**Leader Key**: `<space>`

## Essential Daily Use

### File Operations
| Key | Action | VSCode Equivalent |
|-----|--------|------------------|
| `<leader>ff` | Find files | Ctrl+P |
| `<leader>e` | File explorer | Ctrl+Shift+E |
| `Ctrl+s` | Save file | Ctrl+S |
| `<leader>bd` | Close file | Ctrl+W |
| `<leader>fs` | Save all | Ctrl+K+S |

### Find & Search
| Key | Action | VSCode Equivalent |
|-----|--------|------------------|
| `/` | Find in file | Ctrl+F |
| `n` / `N` | Next/Previous result | F3/Shift+F3 |
| `<leader>fg` | Find in files | Ctrl+Shift+F |
| `<leader>sr` | Search & replace | Ctrl+H |

### Navigation
| Key | Action | VSCode Equivalent |
|-----|--------|------------------|
| `Shift+h` / `Shift+l` | Previous/Next file | Ctrl+PageUp/PageDown |
| `gd` | Go to definition | F12 |
| `gr` | Find references | Shift+F12 |
| `<leader>cs` | Go to symbol | Ctrl+Shift+O |

### Code Actions
| Key | Action | VSCode Equivalent |
|-----|--------|------------------|
| `<leader>ca` | Code actions | Ctrl+. |
| `<leader>cr` | Rename | F2 |
| `<leader>cf` | Format | Shift+Alt+F |
| `gcc` | Toggle comment | Ctrl+/ |

### Basic Editing
| Key | Action | VSCode Equivalent |
|-----|--------|------------------|
| `u` | Undo | Ctrl+Z |
| `Ctrl+r` | Redo | Ctrl+Y |
| `dd` | Delete line | Ctrl+Shift+K |
| `yy` | Copy line | Ctrl+C |
| `p` | Paste | Ctrl+V |

## Custom Shortcuts (Your Config)

### Quick Access
| Key | Action |
|-----|--------|
| `Alt+g` | Open Lazygit |
| `Alt+q` | Quit all |
| `kj` | Exit insert mode |
| `Ctrl+d/u` | Scroll & center |

### File Explorer (Mini.files)
| Key | Action |
|-----|--------|
| `l` | Enter directory |
| `h` | Go back |
| `Enter` | Open file |
| `s` | Save changes |
| `Space+yy` | Copy file |
| `Space+p` | Paste file |

### Git Operations
| Key | Action |
|-----|--------|
| `]h` / `[h` | Next/Previous git hunk |
| `<leader>ghs` | Stage hunk |
| `<leader>ghr` | Reset hunk |
| `<leader>ghp` | Preview hunk |

## Movement & Selection

### Basic Movement
| Key | Action |
|-----|--------|
| `gh` | Start of line |
| `gl` | End of line |
| `gg` | Top of file |
| `G` | Bottom of file |
| `w` / `b` | Next/Previous word |

### Visual Mode
| Key | Action |
|-----|--------|
| `v` | Character selection |
| `V` | Line selection |
| `Ctrl+v` | Block selection |
| `>` / `<` | Indent/Outdent |

## Window Management

### Splits
| Key | Action |
|-----|--------|
| `Ctrl+w+v` | Vertical split |
| `Ctrl+w+s` | Horizontal split |
| `Ctrl+w+h/j/k/l` | Navigate splits |
| `Ctrl+w+c` | Close split |

## Terminal & System
| Key | Action |
|-----|--------|
| `<leader>ft` | Open terminal |
| `Ctrl+/` | Toggle terminal |
| `Alt+R` | Restart Neovim |
| `Alt+d` | Dismiss notifications |

## Common Commands
| Command | Action |
|---------|--------|
| `:w` | Save |
| `:q` | Quit |
| `:wq` | Save and quit |
| `:bd` | Close buffer (safe) |
| `:qa` | Quit all |

## Tips
1. Use `<leader>ff` for quick file access
2. Use `Shift+h/l` to switch between files  
3. Use `/` for quick search instead of Ctrl+F
4. Use `<leader>bd` to close files (safer than tab close)
5. Use `Alt+g` for git operations
6. Use `kj` to exit insert mode quickly