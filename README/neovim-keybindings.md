# Neovim LazyVim Keybindings Reference

## Leader Key
- **Leader Key**: `<space>` (LazyVim default)

## Core Movement & Navigation

### Basic Movement
- **gh** → Go to beginning of line (`^`)
- **gl** → Go to end of line (`$`)
- **gl** (visual mode) → Go to end of line excluding last character (`$h`)

### Window Navigation
- **Ctrl+h/j/k/l** → Navigate between windows (left/down/up/right)
- **Ctrl+d** → Scroll down 35% of window height and center cursor
- **Ctrl+u** → Scroll up 35% of window height and center cursor

### Buffer Navigation
- **Shift+h** → Open Snacks picker for buffers (with preview)
- **Shift+l** → Snipe buffer selector (quick buffer switching)

## File Management & Exploration

### Mini.files (File Explorer)
- **`<leader>e`** → Open mini.files (directory of current file)
- **`<leader>E`** → Open mini.files (current working directory)

#### Mini.files Navigation
- **l** → Go into directory/file
- **Enter** → Open file and exit mini.files
- **h** → Go out (show all items to right)
- **H** → Go out plus (show only 1 item to right)
- **Escape** → Close mini.files
- **s** → Synchronize
- **g?** → Show help
- **< / >** → Trim left/right
- **Backspace** → Reset
- **.** → Reveal current working directory

#### Mini.files Custom Actions
- **Alt+t** → Open highlighted directory in tmux pane
- **Space+yy** → Copy file/directory to clipboard (macOS)
- **Space+yz** → Zip and copy to clipboard
- **Space+p** → Paste from clipboard
- **Alt+c** → Copy relative path to clipboard
- **Space+i** → Preview image with macOS Quick Look
- **Alt+i** → Preview image in popup

### File Operations
- **`<leader><space>`** → Snacks file picker
- **Ctrl+s** → Save file (works in insert and normal mode)

## Editing & Text Manipulation

### Insert Mode
- **kj** → Exit insert mode (alternative to Escape)
- **Ctrl+s** → Save and stay in insert mode

### Visual Mode Enhancements
- **y** → Smart copy (markdown files get prose-wrap formatting)
- **>** → Indent and maintain selection
- **<** → Outdent and maintain selection

### Text Objects & Selection
- **Alt+2** → Select current git hunk in visual mode

### Line Movement
- **Alt+j/k** → Move lines up/down (works in normal, insert, and visual modes)

## Git Integration

### Git Navigation
- **]h / [h** → Next/previous git hunk
- **]H / [H** → Last/first git hunk

### Git Operations
- **`<leader>ghs`** → Stage hunk
- **`<leader>ghr`** → Reset hunk
- **`<leader>ghS`** → Stage entire buffer
- **`<leader>ghu`** → Undo stage hunk
- **`<leader>ghR`** → Reset entire buffer
- **`<leader>ghp`** → Preview hunk inline
- **`<leader>ghb`** → Blame line (full)
- **`<leader>ghB`** → Blame buffer
- **`<leader>ghd`** → Diff this (with word wrap)
- **`<leader>ghD`** → Diff this against HEAD~

### Git Tools
- **Alt+g** → Open Lazygit (quick access)
- **`<leader>gl`** → Git log (Snacks picker)
- **Alt+b** → Git branches (Snacks picker)

## Search & Find

### Telescope/Snacks Integration
- **Alt+k** → Show keymaps
- **`<leader>tt`** → Search for incomplete tasks (`- [ ]`)
- **`<leader>tc`** → Search for completed tasks (`- [x] done:`)

## LazyVim Default Keybindings

### File Management
- **`<leader>ff`** → Find files
- **`<leader>fr`** → Recent files
- **`<leader>fg`** → Find in files (grep)
- **`<leader>fb`** → Find buffers
- **`<leader>fc`** → Find config files
- **`<leader>fn`** → New file

### Code Operations
- **`<leader>cf`** → Code format
- **`<leader>ca`** → Code actions
- **`<leader>cr`** → Rename symbol
- **`<leader>cd`** → Line diagnostics
- **`<leader>cs`** → Document symbols

### LSP Navigation
- **gd** → Go to definition
- **gr** → Go to references
- **gI** → Go to implementation
- **gy** → Go to type definition
- **gD** → Go to declaration
- **K** → Hover documentation
- **gK** → Signature help

### Diagnostics
- **]d / [d** → Next/previous diagnostic
- **]e / [e** → Next/previous error
- **]w / [w** → Next/previous warning
- **`<leader>xl`** → Location list
- **`<leader>xq`** → Quickfix list

### Terminal
- **`<leader>ft`** → Open terminal
- **`<leader>fT`** → Open terminal (root dir)
- **Ctrl+/** → Toggle terminal

### UI Toggles
- **`<leader>us`** → Toggle spell check
- **`<leader>uw`** → Toggle word wrap
- **`<leader>uL`** → Toggle relative line numbers
- **`<leader>ul`** → Toggle line numbers
- **`<leader>ud`** → Toggle diagnostics
- **`<leader>uc`** → Toggle conceallevel
- **`<leader>uh`** → Toggle inlay hints
- **`<leader>uT`** → Toggle treesitter highlight

### Tabs & Windows
- **`<leader><tab>l`** → Last tab
- **`<leader><tab>f`** → First tab
- **`<leader><tab><tab>`** → New tab
- **`<leader><tab>]`** → Next tab
- **`<leader><tab>d`** → Close tab
- **`<leader><tab>[`** → Previous tab

### Sessions
- **`<leader>qs`** → Restore session
- **`<leader>ql`** → Restore last session
- **`<leader>qd`** → Don't save current session

### Lazy Plugin Manager
- **`<leader>l`** → Lazy (plugin manager)

## Utility Functions

### System Integration
- **Alt+q** → Quit all (save and exit)
- **Alt+R** → Restart Neovim via BetterTouchTool
- **Alt+h** → Show Noice notification history
- **Alt+d** → Dismiss all notifications

### Clipboard Operations
- **`<leader>y`** → Yank to system clipboard
- **yd** → Copy current line and diagnostics to clipboard

### Special Functions
- **Alt+3** → Inline calculator for expressions in backticks
- **`<leader>fP`** → Inspect plugin merge configuration
- **`<leader>uk`** → Toggle kubectl plugin

## Markdown & Task Management

### Task Management
- **`<leader>tt`** → Find incomplete tasks in current directory
- **`<leader>tc`** → Find completed tasks in current directory

## Custom Alt/Meta Shortcuts Summary

Quick access via Alt key combinations:
- **Alt+g** → Lazygit
- **Alt+q** → Quit all
- **Alt+R** → Restart Neovim
- **Alt+h** → Noice history
- **Alt+d** → Dismiss notifications
- **Alt+k** → Keymaps picker
- **Alt+b** → Git branches
- **Alt+3** → Inline calculator
- **Alt+2** → Select git hunk
- **Alt+j/k** → Move lines up/down

## Navigation Patterns

### Quick Navigation
- **]q / [q** → Next/previous quickfix item
- **]l / [l** → Next/previous location list item
- **]b / [b** → Next/previous buffer
- **]t / [t** → Next/previous tab

### Jumping
- **gf** → Go to file under cursor
- **gx** → Open URL under cursor
- **``** → Go to last cursor position
- **'.** → Go to last modified line

## VSCode-like Essential Keybindings

### Find & Replace
- **/** → Find in current file
- **?** → Find backwards in current file
- **n** → Next search result
- **N** → Previous search result
- **`<leader>sr`** → Search and replace in current file
- **`<leader>sR`** → Search and replace in all files
- **`<leader>fg`** → Find in files (grep search)
- **`<leader>fw`** → Find word under cursor
- **`<leader>fW`** → Find WORD under cursor

### Command Palette Equivalent
- **`<leader><leader>`** → Command palette (LazyVim)
- **`<leader>:`** → Command history
- **`<leader>ff`** → Find files (Ctrl+P equivalent)
- **`<leader>fb`** → Find buffers
- **`<leader>fc`** → Find config files

### Go To Definition & Navigation
- **gd** → Go to definition (F12)
- **gD** → Go to declaration
- **gr** → Go to references (Shift+F12)
- **gI** → Go to implementation
- **gy** → Go to type definition
- **`<leader>cs`** → Go to symbol in document (Ctrl+Shift+O)
- **`<leader>cS`** → Go to symbol in workspace (Ctrl+T)

### Code Actions & Refactoring
- **`<leader>ca`** → Code actions (Ctrl+.)
- **`<leader>cr`** → Rename symbol (F2)
- **`<leader>cf`** → Format document (Shift+Alt+F)
- **`<leader>cF`** → Format selection
- **`<leader>ci`** → Organize imports

### Undo/Redo & History
- **u** → Undo (Ctrl+Z)
- **Ctrl+r** → Redo (Ctrl+Y)
- **U** → Undo entire line
- **`<leader>fh`** → File history
- **`<leader>sh`** → Search command history

### Multi-cursor & Selection
- **Ctrl+v** → Visual block mode (column selection)
- **v** → Visual mode (character selection)
- **V** → Visual line mode (line selection)
- **gv** → Reselect last visual selection
- **`<leader>sw`** → Select word under cursor
- **ciw** → Change inner word
- **diw** → Delete inner word
- **viw** → Select inner word

### Comments
- **gc** → Toggle comment (works with motions)
- **gcc** → Toggle line comment (Ctrl+/)
- **gC** → Toggle block comment (Ctrl+Shift+A)
- **gcap** → Toggle comment paragraph

### Folding
- **za** → Toggle fold (Ctrl+Shift+[/])
- **zc** → Close fold
- **zo** → Open fold
- **zR** → Open all folds
- **zM** → Close all folds
- **zr** → Reduce folding
- **zm** → More folding

### Tab/Page Management (VSCode Ctrl+W equivalents)
- **`<leader>bd`** → Close current buffer/tab (Ctrl+W) - keeps window open
- **`<leader>bD`** → Close buffer and window
- **`<leader><tab>d`** → Close current tab page (may error if last tab)
- **`<leader>bo`** → Close all other buffers (Ctrl+K+W)
- **`<leader>ba`** → Close all buffers
- **Ctrl+w+c** → Close current window split
- **Ctrl+w+o** → Close all other windows (keep current)

### Safe Alternatives for Last Tab
- **:bd** → Close buffer (safe, won't close Neovim)
- **:q** → Quit current window (will close Neovim if last window)
- **:qa** → Quit all (close Neovim entirely)
- **Alt+q** → Custom quit all (from your config)

### Tab Navigation (VSCode Ctrl+Tab equivalents)
- **Shift+h** → Previous buffer (Ctrl+PageUp)
- **Shift+l** → Next buffer (Ctrl+PageDown)
- **`<leader>bb`** → Switch between buffers
- **`<leader>fb`** → Find/pick buffer
- **Ctrl+6** → Switch to last buffer (Alt+Tab equivalent)

### Window/Split Management
- **Ctrl+w+v** → Vertical split (Ctrl+\\)
- **Ctrl+w+s** → Horizontal split
- **Ctrl+w+h/j/k/l** → Navigate between splits
- **Ctrl+w+=** → Equalize window sizes
- **Ctrl+w+_** → Maximize current window height
- **Ctrl+w+|** → Maximize current window width

### Quick Actions
- **Ctrl+s** → Save file (Ctrl+S)
- **`<leader>fs`** → Save all files (Ctrl+K+S)
- **`<leader>qq`** → Quit
- **`<leader>qa`** → Quit all (Ctrl+Shift+W)

### Panels & Sidebar
- **`<leader>e`** → Toggle file explorer (Ctrl+Shift+E)
- **`<leader>gg`** → Open git panel (Lazygit)
- **`<leader>xx`** → Toggle trouble (problems panel)
- **`<leader>xl`** → Location list
- **`<leader>xq`** → Quickfix list

### IntelliSense & Autocomplete
- **K** → Show hover info (hover documentation)
- **gK** → Show signature help
- **Ctrl+space** → Trigger completion (in insert mode)
- **`<leader>cd`** → Show line diagnostics
- **`<leader>cD`** → Show workspace diagnostics

### Debugging (if configured)
- **`<leader>db`** → Toggle breakpoint
- **`<leader>dB`** → Breakpoint condition
- **`<leader>dc`** → Continue
- **`<leader>dC`** → Run to cursor
- **`<leader>dg`** → Go to line (no execute)
- **`<leader>di`** → Step into
- **`<leader>dj`** → Step down
- **`<leader>dk`** → Step up
- **`<leader>dl`** → Run last
- **`<leader>do`** → Step out
- **`<leader>dO`** → Step over
- **`<leader>dp`** → Pause
- **`<leader>dr`** → Toggle REPL
- **`<leader>ds`** → Session
- **`<leader>dt`** → Terminate

### Additional Text Editing
- **dd** → Delete line (Ctrl+Shift+K)
- **yy** → Copy line (Ctrl+C on line)
- **p** → Paste after cursor (Ctrl+V)
- **P** → Paste before cursor
- **Ctrl+d** → Add cursor to next match
- **Ctrl+a** → Select all
- **gg** → Go to first line (Ctrl+Home)
- **G** → Go to last line (Ctrl+End)
- **0** → Go to beginning of line (Home)
- **$** → Go to end of line (End)

### Terminal Integration
- **`<leader>ft`** → Open terminal (Ctrl+`)
- **`<leader>fT`** → Open terminal in root dir
- **Ctrl+/**  → Toggle terminal

## Tips for Efficiency

1. **Use Leader+Space** for quick file access
2. **Alt combinations** for frequent operations
3. **Shift+H/L** for buffer navigation
4. **Mini.files (Leader+e)** for file management
5. **Git hunks navigation** with ]h/[h
6. **Ctrl+d/u** for smooth scrolling
7. **Alt+g** for quick git operations
8. **Use /** for quick find instead of Ctrl+F
9. **gd/gr** for navigation instead of F12/Shift+F12
10. **Leader+ca** for code actions instead of Ctrl+.