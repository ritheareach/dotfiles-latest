# Karabiner Key Bindings Reference

## Core Key Modifications
- **Right Command** → Hyper Key (⌃⌥⇧⌘)
- **Caps Lock** → Shift (hold) / Escape (tap)
- **Left Command** → Cmd+C (when pressed alone)
- **Left Shift** → Tmux prefix+space (when pressed alone) 
- **Right Shift** → Mute microphone (when pressed alone)
- **Left Option** → Cmd+V (when pressed alone)
- **Left Control** → Cmd+Tab (when pressed alone)

## Arrow Key Shortcuts
- **Left Arrow** → Cmd+Tab+Tab (switch between last 3 apps)
- **Down Arrow** → Open Sesh (session manager)
- **Up Arrow** → Tmux visual mode
- **Right Arrow** → Open Kitty

## Other Single Keys
- **Left Option + Space** → Enter

## Hyper Key Combinations (Right Command + ...)

### Apps (Hyper + A + ...)
- **h** → Spotify
- **j** → Ghostty 
- **k** → Vivaldi
- **;** → ChatGPT
- **'** → System Settings
- **y** → YouTube
- **u** → WhatsApp Web
- **i** → Slack
- **o** → OBS
- **b** → Brave Browser
- **[** → Reminders
- **n** → Neovide
- **m** → Mail
- **s** → Udemy Business
- **d** → Discord
- **p** → 1Password
- **f** → ForkLift
- **g** → Udemy
- **q** → Setapp
- **w** → Microsoft Word
- **e** → Microsoft Excel
- **r** → Recut
- **t** → Microsoft Teams
- **6** → Windows App
- **7** → Jitsi Meet
- **5** → DaVinci Resolve
- **x** → GoTo
- **c** → Calendar
- **v** → Zoom

### Tmux Sessions (Hyper + T + ...)
- **h** → Home session
- **j** → Dotfiles session
- **k** → Watusy session
- **l** → Linkarzu.github.io session
- **;** → Scripts session
- **y** → Containerdata session
- **p** → Containerdata_nfs session
- **u** → Obsidian_main session
- **i** → PHP session
- **o** → Containerdata-public session
- **n** → Find session
- **m** → Find goto session
- **r** → Daily note session
- **e** → Karabiner rules.ts file
- **[** → Golang directory

### OBS Scene Switching (Hyper + O + ...)
- **m** → Main scene
- **s** → Starting soon scene
- **1** → Guest1 scene
- **2** → Guest2 scene
- **3** → Guest3 scene
- **b** → Be right back scene
- **t** → Tech difficulties scene
- **z** → Zoom main scene
- **g** → Guests all notes right scene

### SSH Sessions (Hyper + E + ...)
- **h** → xocli3
- **j** → docker3
- **k** → storage3
- **l** → prodkubecp3
- **;** → prodkubew3
- **i** → dns3
- **u** → lb3
- **n** → Find
- **r** → ~/.ssh/config find

### Raycast (Hyper + R + ...)
- **j** → Raindrop.io search
- **k** → Google search
- **l** → File search
- **;** → Google Drive
- **y** → YouTube search
- **u** → Create reminder
- **i** → Google Images
- **o** → GitHub repositories
- **p** → Brew search
- **h** → Spotify search
- **e** → Emoji search

### System Controls (Hyper + S + ...)
- **j** → Volume down
- **k** → Volume up
- **h** → Previous browser tab
- **l** → Next browser tab
- **u** → Brightness down
- **i** → Brightness up
- **y** → Previous song
- **o** → Next song
- **p** → Play/Pause
- **t** → Execute system task
- **e** → Close browser tab
- **n** → Connect AirPods
- **m** → Switch audio to AirPods
- **8** → Start video recording
- **9** → Stop video recording
- **[** → Tmux banner on
- **]** → Tmux banner off
- **,** → Switch audio to Mac mini
- **.** → Switch audio to MacBook Pro

### Utilities (Hyper + U + ...)
- **i** → Lock screen
- **r** → Restart yabai
- **k** → Dismiss notifications
- **g** → Restart Ghostty

### Selection Mode (Hyper + V + ...)
- **h/j/k/l** → Shift+Arrow keys (select text)
- **y/u/i/o** → Shift+Option+Arrow keys (select words)

### BetterTouchTool (Hyper + D + ...)
- **j** → Terminal select last command
- **k** → Paste and go down
- **l** → Paste and go up
- **u** → Reboot router
- **-** → Test ping

### Colorscheme (Hyper + C + ...)
- **n** → Execute colorscheme selector script

### Navigation (Hyper + ...)
- **h** → Left arrow
- **j** → Down arrow
- **k** → Up arrow
- **l** → Right arrow
- **f** → Ctrl+B (tmux prefix)

### Mouse Controls (Hyper + Left Command + ...)
- **4** → Switch MX Vertical mouse to Mac mini
- **5** → Switch MX Vertical mouse to MacBook Pro
- **j** → Pull GitHub repos

## Function Keys
- **F3** → Open Presentify
- **F4** → Ctrl+Z (Trickster)
- **F6** → Rewind
- **F7** → Play/Pause
- **F8** → Fast Forward
- **F9** → Volume Down
- **F10** → Volume Up

## Notes
- **Hyper Key** = Right Command key acts as ⌃⌥⇧⌘ (Control + Option + Shift + Command)
- Most shortcuts use BetterTouchTool triggers for complex actions
- Audio switching uses SwitchAudioSource utility
- OBS scene switching uses Python scripts
- Tmux sessions use custom sessionizer scripts