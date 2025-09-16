# Simple Yabai Keybindings with skhd

**No complex Hyper key needed!** Just simple modifier combinations.

## Basic Pattern
- **Cmd + Alt** = Basic window operations  
- **Shift + Cmd + Alt** = Move operations
- **Cmd + Alt + Ctrl** = Resize operations

## Window Management

### Focus Windows (Vim-style)
| Keys | Action |
|------|--------|
| `Cmd + Alt + H/J/K/L` | Focus left/down/up/right window |

### Move Windows  
| Keys | Action |
|------|--------|
| `Shift + Cmd + Alt + H/J/K/L` | Move window left/down/up/right |

### Resize Windows
| Keys | Action |
|------|--------|
| `Cmd + Alt + Ctrl + H/L` | Resize left/right |
| `Cmd + Alt + Ctrl + J/K` | Resize down/up |

### Window Actions
| Keys | Action |
|------|--------|
| `Cmd + Alt + F` | Toggle fullscreen |
| `Cmd + Alt + T` | Toggle float |
| `Cmd + Alt + E` | Toggle split type |

## Dual Monitor

### Move Between Displays
| Keys | Action |
|------|--------|
| `Cmd + Alt + 1` | Move window to display 1 + focus |
| `Cmd + Alt + 2` | Move window to display 2 + focus |
| `Cmd + Alt + ,` | Focus display 1 (MacBook) |
| `Cmd + Alt + .` | Focus display 2 (external) |
| `Cmd + Alt + Tab` | Toggle between displays |

### Move Spaces Between Displays
| Keys | Action |
|------|--------|
| `Cmd + Alt + ←` | Move space to previous display |
| `Cmd + Alt + →` | Move space to next display |

## Spaces (Virtual Desktops)

### Focus Spaces
| Keys | Action |
|------|--------|
| `Cmd + Alt + 1/2/3/4` | Focus space 1/2/3/4 |
| `Cmd + Alt + ]` | Next space |
| `Cmd + Alt + [` | Previous space |

### Move Windows to Spaces
| Keys | Action |
|------|--------|
| `Shift + Cmd + Alt + 1/2/3/4` | Move window to space + focus |

### Create/Destroy Spaces
| Keys | Action |
|------|--------|
| `Cmd + Alt + N` | Create new space |
| `Cmd + Alt + X` | Delete current space |

## Layout Controls

### Change Layouts
| Keys | Action |
|------|--------|
| `Cmd + Alt + S` | Stack layout (current) |
| `Cmd + Alt + B` | BSP layout (tiling) |
| `Cmd + Alt + D` | Float layout |

### Layout Actions
| Keys | Action |
|------|--------|
| `Cmd + Alt + =` | Balance windows |
| `Cmd + Alt + R` | Rotate windows 90° |
| `Cmd + Alt + M` | Mirror windows |

## Stack Mode Navigation
| Keys | Action |
|------|--------|
| `Cmd + Alt + P` | Previous window in stack |
| `Cmd + Alt + N` | Next window in stack |

## System Controls
| Keys | Action |
|------|--------|
| `Shift + Cmd + Alt + R` | Restart yabai |
| `Shift + Cmd + Alt + Q` | Stop yabai |
| `Shift + Cmd + Alt + S` | Start yabai |

## Quick App Launch (Optional)
| Keys | Action |
|------|--------|
| `Cmd + Alt + Return` | Open kitty |
| `Cmd + Alt + G` | Open Ghostty |
| `Cmd + Alt + C` | Open Chrome |
| `Cmd + Alt + V` | Open VS Code |

## Getting Started

1. **Focus windows**: `Cmd + Alt + H/J/K/L`
2. **Move windows**: `Shift + Cmd + Alt + H/J/K/L`  
3. **Dual monitor**: `Cmd + Alt + 1/2` to move between displays
4. **Toggle fullscreen**: `Cmd + Alt + F`
5. **Balance windows**: `Cmd + Alt + =`

## Tips

- **Much simpler** than Hyper key combinations
- **Consistent pattern**: Cmd+Alt for basic, add Shift to move, add Ctrl to resize
- **Vim-style navigation**: H/J/K/L for directions
- **Numbers for displays/spaces**: 1/2 for displays, 1/2/3/4 for spaces
- **Restart if stuck**: `Shift + Cmd + Alt + R`

## Accessibility Setup

skhd needs accessibility permissions:
1. **System Settings > Privacy & Security > Accessibility** 
2. **Add skhd** (`/usr/local/bin/skhd`)
3. **Restart skhd**: `skhd --restart-service`