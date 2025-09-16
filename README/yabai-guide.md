# Yabai Window Manager Guide

## Current Configuration

### Layout Mode
- **Stack Mode**: Single window on front, others stacked behind
- **Focus**: Click or use shortcuts to bring windows forward

### Key Bindings (via Karabiner)
- **Hyper + U + R** - Restart yabai service
- **Hyper + U + G** - Restart Ghostty terminal
- **Hyper Key** = Right Command (⌃⌥⇧⌘)

### Window Properties
- **Gaps**: 6px between windows
- **Borders**: Disabled (can be enabled with 4px width, 12px radius)
- **Opacity**: 0.87 for transparent apps (Neovide, VS Code)
- **Shadow**: Disabled for cleaner look

### Spaces (Desktops)
- **Space 1** ("default") - All apps by default
- **Space 2** ("terminal") - Ghostty only

### App Categories

#### Transparent Apps (0.87 opacity)
- Neovide
- VS Code

#### Managed Off (floating windows)
- Calculator, iStat Menus, Hammerspoon
- BetterDisplay, GIMP, Notes  
- Activity Monitor, App Store
- OBS Studio, Discord, DaVinci Resolve
- kitty (positioned as sticky notes)

#### Always Visible (sticky notes)
- kitty - Auto-positioned in right padding area

## Basic Yabai Commands

### Window Focus
```bash
# Focus window in direction
yabai -m window --focus north/south/east/west

# Focus next/previous window in stack
yabai -m window --focus stack.next
yabai -m window --focus stack.prev

# Focus recent window
yabai -m window --focus recent
```

### Window Movement
```bash
# Move window in direction
yabai -m window --warp north/south/east/west

# Move to space
yabai -m window --space 1
yabai -m window --space 2

# Move to next/prev space
yabai -m window --space next
yabai -m window --space prev
```

### Window Size
```bash
# Resize window
yabai -m window --resize left:-50:0    # shrink left
yabai -m window --resize right:50:0    # grow right
yabai -m window --resize top:0:-50     # shrink top
yabai -m window --resize bottom:0:50   # grow bottom

# Toggle fullscreen
yabai -m window --toggle zoom-fullscreen

# Toggle native fullscreen
yabai -m window --toggle native-fullscreen
```

### Space Management
```bash
# Create new space
yabai -m space --create

# Delete space
yabai -m space --destroy

# Focus space
yabai -m space --focus 1
yabai -m space --focus next
yabai -m space --focus prev
```

### Layout Controls
```bash
# Change layout
yabai -m config layout bsp     # tiling mode
yabai -m config layout stack   # stack mode (current)
yabai -m config layout float   # floating mode

# Balance windows (bsp mode)
yabai -m space --balance

# Rotate windows (bsp mode)
yabai -m space --rotate 90
```

### Window Info
```bash
# Query focused window
yabai -m query --windows --window

# Query all windows
yabai -m query --windows

# Query spaces
yabai -m query --spaces

# Get window apps
yabai -m query --windows | jq -r '.[].app'
```

### Scratchpad (disabled in your config)
```bash
# Toggle scratchpad
yabai -m window --toggle study
yabai -m window --toggle spotify
```

## Mouse Controls
- **Fn + Left Click** - Move window
- **Fn + Right Click** - Resize window

## Display-Specific Padding
Your config automatically adjusts padding based on display:

- **MacBook Pro 16"** (3456x2234): Right padding 230px
- **MacBook Pro 14"** (3024x1964): Right padding 230px  
- **External Monitor** (3200x1800): Right padding 230px
- **Shorts Format** (1536x2048): Bottom padding 220px

## Automatic Features
- **kitty positioning**: Auto-positioned as sticky notes
- **Transparency**: Certain apps become transparent when not focused
- **App exclusions**: Many apps excluded from tiling (floating)
- **Sketchybar integration**: Status bar updates with window focus

## Tips for Usage

1. **Stack Navigation**: In stack mode, click on windows in dock/alt-tab to focus
2. **Space Switching**: Use Mission Control gestures or keyboard shortcuts
3. **App Exclusions**: Floating apps won't be tiled automatically
4. **Restart**: Use `Hyper + U + R` when yabai acts up
5. **Transparency**: Focus changes opacity of designated apps automatically

## Common Issues & Solutions

### Windows Not Tiling
- Check if app is in excluded list (manage=off)
- Restart yabai: `Hyper + U + R`
- Verify SIP is disabled for scripting addition

### Performance Issues
- Disable transparency if needed
- Reduce animation duration
- Check for conflicting apps

### Customization
- Edit `/Users/reach/github/dotfiles-latest/yabai/yabairc`
- Modify app lists in `/Users/reach/github/dotfiles-latest/yabai/yabai_env.sh`
- Restart yabai after changes