# Yabai Keybindings Setup Guide

## Current Keybindings (via Karabiner)

### Available Shortcuts
- **Hyper + U + R** - Restart yabai service
- **Hyper + U + G** - Restart Ghostty terminal
- **Hyper Key** = Right Command (⌃⌥⇧⌘)

## How to Add More Yabai Keybindings

### Method 1: Add to Karabiner (Recommended)

Edit `/Users/reach/github/dotfiles-latest/karabiner/mxstbr/rules.ts` and add new keybindings in the `u:` section:

```typescript
u: {
  // Existing shortcuts
  r: {
    to: [
      {
        shell_command: `~/github/dotfiles-latest/yabai/yabai_restart.sh`,
      },
    ],
  },
  g: open("btt://execute_assigned_actions_for_trigger/?uuid=DAB53833-E0D1-4FF6-A411-3B02E3C55153"),

  // ADD NEW YABAI SHORTCUTS HERE:
  
  // Focus windows
  h: {
    to: [
      {
        shell_command: `yabai -m window --focus west`,
      },
    ],
  },
  j: {
    to: [
      {
        shell_command: `yabai -m window --focus south`,
      },
    ],
  },
  k: {
    to: [
      {
        shell_command: `yabai -m window --focus north`,
      },
    ],
  },
  l: {
    to: [
      {
        shell_command: `yabai -m window --focus east`,
      },
    ],
  },
  
  // Move windows
  y: {
    to: [
      {
        shell_command: `yabai -m window --warp west`,
      },
    ],
  },
  u: {
    to: [
      {
        shell_command: `yabai -m window --warp south`,
      },
    ],
  },
  i: {
    to: [
      {
        shell_command: `yabai -m window --warp north`,
      },
    ],
  },
  o: {
    to: [
      {
        shell_command: `yabai -m window --warp east`,
      },
    ],
  },
  
  // Toggle fullscreen
  f: {
    to: [
      {
        shell_command: `yabai -m window --toggle zoom-fullscreen`,
      },
    ],
  },
  
  // Move to spaces
  1: {
    to: [
      {
        shell_command: `yabai -m window --space 1`,
      },
    ],
  },
  2: {
    to: [
      {
        shell_command: `yabai -m window --space 2`,
      },
    ],
  },
  
  // Layout controls
  s: {
    to: [
      {
        shell_command: `yabai -m config layout stack`,
      },
    ],
  },
  b: {
    to: [
      {
        shell_command: `yabai -m config layout bsp`,
      },
    ],
  },
  
  // Window stacking (for stack mode)
  n: {
    to: [
      {
        shell_command: `yabai -m window --focus stack.next`,
      },
    ],
  },
  p: {
    to: [
      {
        shell_command: `yabai -m window --focus stack.prev`,
      },
    ],
  },
},
```

### Method 2: Create New Hyper Layer

Add a new layer for yabai-specific shortcuts:

```typescript
// Add this to your main rules array
w: {
  // Window focus
  h: {
    to: [{ shell_command: `yabai -m window --focus west` }],
  },
  j: {
    to: [{ shell_command: `yabai -m window --focus south` }],
  },
  k: {
    to: [{ shell_command: `yabai -m window --focus north` }],
  },
  l: {
    to: [{ shell_command: `yabai -m window --focus east` }],
  },
  
  // Space switching
  1: {
    to: [{ shell_command: `yabai -m space --focus 1` }],
  },
  2: {
    to: [{ shell_command: `yabai -m space --focus 2` }],
  },
  
  // Create/destroy spaces
  c: {
    to: [{ shell_command: `yabai -m space --create` }],
  },
  d: {
    to: [{ shell_command: `yabai -m space --destroy` }],
  },
},
```

## Useful Yabai Commands for Keybindings

### Window Focus
```bash
yabai -m window --focus north     # Focus up
yabai -m window --focus south     # Focus down  
yabai -m window --focus east      # Focus right
yabai -m window --focus west      # Focus left
yabai -m window --focus recent    # Focus recent window
yabai -m window --focus stack.next   # Next in stack
yabai -m window --focus stack.prev   # Previous in stack
```

### Window Movement
```bash
yabai -m window --warp north      # Move window up
yabai -m window --warp south      # Move window down
yabai -m window --warp east       # Move window right
yabai -m window --warp west       # Move window left
yabai -m window --space 1         # Move to space 1
yabai -m window --space next      # Move to next space
yabai -m window --space prev      # Move to previous space
```

### Window Size
```bash
yabai -m window --resize left:-50:0     # Shrink left
yabai -m window --resize right:50:0     # Grow right
yabai -m window --resize top:0:-50      # Shrink top
yabai -m window --resize bottom:0:50    # Grow bottom
yabai -m window --toggle zoom-fullscreen # Toggle fullscreen
```

### Layout Controls
```bash
yabai -m config layout bsp        # Tiling mode
yabai -m config layout stack      # Stack mode (current)
yabai -m config layout float      # Floating mode
yabai -m space --balance          # Balance windows (bsp)
yabai -m space --rotate 90        # Rotate windows (bsp)
```

### Space Management
```bash
yabai -m space --create           # Create new space
yabai -m space --destroy          # Delete current space
yabai -m space --focus 1          # Focus space 1
yabai -m space --focus next       # Focus next space
yabai -m space --focus prev       # Focus previous space
```

## After Making Changes

1. **Save the file**
2. **Rebuild Karabiner config**:
   ```bash
   cd /Users/reach/github/dotfiles-latest/karabiner/mxstbr
   npm run build  # or yarn build
   ```
3. **Restart Karabiner Elements** if needed

## Recommended Keybinding Layout

For your current setup, I recommend:

- **Hyper + W + [hjkl]** - Focus windows (vim-style)
- **Hyper + W + [HJKL]** - Move windows  
- **Hyper + W + [12345]** - Switch to spaces
- **Hyper + W + Shift + [12345]** - Move window to spaces
- **Hyper + W + F** - Toggle fullscreen
- **Hyper + W + S** - Stack layout
- **Hyper + W + B** - BSP (tiling) layout
- **Hyper + W + N/P** - Next/Previous in stack

## Your Current Transparency Setup

Your yabai config automatically makes these apps transparent (0.87 opacity):
- **Neovide** 
- **VS Code**

The transparency is controlled by focus - when you focus away from these apps, they become transparent. This is handled automatically by yabai signals in your config.

## Testing Your Setup

After adding keybindings, test with:
1. Open a few terminal windows
2. Try your new shortcuts
3. Use `Hyper + U + R` to restart yabai if something breaks