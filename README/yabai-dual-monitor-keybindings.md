# Yabai Dual Monitor Keybindings

## Add these to your Karabiner rules.ts file

Add these keybindings to the `u:` section (Hyper + U + ...) for dual monitor support:

```typescript
// Dual Monitor Support
// Move windows between displays
1: {
  to: [
    {
      shell_command: `yabai -m window --display 1 && yabai -m display --focus 1`,
    },
  ],
},
2: {
  to: [
    {
      shell_command: `yabai -m window --display 2 && yabai -m display --focus 2`,
    },
  ],
},

// Focus displays
comma: {
  to: [
    {
      shell_command: `yabai -m display --focus 1`,
    },
  ],
},
period: {
  to: [
    {
      shell_command: `yabai -m display --focus 2`,
    },
  ],
},

// Move spaces between displays
left_arrow: {
  to: [
    {
      shell_command: `yabai -m space --display prev`,
    },
  ],
},
right_arrow: {
  to: [
    {
      shell_command: `yabai -m space --display next`,
    },
  ],
},

// Swap displays
s: {
  to: [
    {
      shell_command: `yabai -m display --focus recent`,
    },
  ],
},

// Balance all windows across displays
equal_sign: {
  to: [
    {
      shell_command: `yabai -m space --balance`,
    },
  ],
},
```

## Dual Monitor Commands

### Window Management
```bash
# Move window to display 1 or 2
yabai -m window --display 1
yabai -m window --display 2

# Move window to display and follow focus
yabai -m window --display 2 && yabai -m display --focus 2

# Focus specific display
yabai -m display --focus 1
yabai -m display --focus 2
yabai -m display --focus prev
yabai -m display --focus next
yabai -m display --focus recent
```

### Space Management
```bash
# Move current space to another display
yabai -m space --display 1
yabai -m space --display 2

# Create space on specific display
yabai -m space --create --display 1
yabai -m space --create --display 2

# Focus space on specific display
yabai -m space --focus 1
yabai -m space --focus 2
```

### Display Information
```bash
# Query displays
yabai -m query --displays

# Query windows on specific display
yabai -m query --windows --display 1
yabai -m query --windows --display 2

# Query spaces on specific display
yabai -m query --spaces --display 1
yabai -m query --spaces --display 2
```

## Proposed Keybinding Layout

**Hyper + U + ...**
- **1** → Move window to display 1 + focus
- **2** → Move window to display 2 + focus
- **,** → Focus display 1 (main)
- **.** → Focus display 2 (external)
- **←** → Move space to previous display
- **→** → Move space to next display
- **S** → Swap to recent display
- **=** → Balance windows

## Your Current Setup Detection

Your config now automatically detects:
- **MacBook Pro**: 3072x1920 (Display 1)
- **External Monitor**: 2560x1440 (Display 2)

**Settings Applied:**
- MacBook Pro: Top padding 12px, right padding 230px (for status bar)
- External Monitor: Top padding 38px, no right padding
- Logs dual monitor detection to `/tmp/yabai_debug.log`

## Test Your Setup

1. **Restart yabai**: `Hyper + U + R`
2. **Check detection**: `cat /tmp/yabai_debug.log`
3. **Test commands**:
   ```bash
   yabai -m query --displays
   yabai -m display --focus 1
   yabai -m display --focus 2
   ```

## Tips for Dual Monitor Workflow

1. **Primary display** (MacBook): For coding/main work
2. **External display**: For reference, terminal, or secondary tasks
3. **Use spaces**: Create different spaces on each display
4. **Quick switching**: Use `,` and `.` to jump between displays
5. **Move windows**: Use `1` and `2` to move windows between displays