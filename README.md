# Neovim Shortcuts Reference

**Leader key:** `<Space>`

## General Navigation & Editing

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>n` | n | Toggle NvimTree file explorer |
| `<leader>qq` | n | Close current buffer |
| `<leader>s` | n | Save file |
| `<leader>u` | n | Toggle Undotree |
| `jk` | i | Exit insert mode (Escape) |
| `Q` | n | Disabled (no-op) |

## Window Management

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>h` | n | Move to left window |
| `<leader>l` | n | Move to right window |
| `<leader>k` | n | Move to upper window |
| `<leader>i` | n | Move to lower window |
| `<leader>'` | n | Increase vertical split size (+8) |
| `<leader>;` | n | Decrease vertical split size (-8) |

## Scrolling & Search Navigation

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-d>` | n | Scroll down (centered) |
| `<C-u>` | n | Scroll up (centered) |
| `n` | n | Next search result (centered) |
| `N` | n | Previous search result (centered) |

## Clipboard & Yanking

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>y` | n/v | Yank to system clipboard |
| `<leader>Y` | n | Yank to end of line (system clipboard) |
| `<leader>yy` | n | Yank entire line (system clipboard) |
| `<leader>b` | n | Paste from system clipboard |
| `<leader>p` | x | Paste without overwriting register |
| `<leader>d` | n/v | Delete to black hole register |

## Line Movement (Visual Mode)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `K` | v | Move selected lines up |
| `J` | v | Move selected lines down |
| `J` | n | Join lines (cursor stays in place) |

## Harpoon (Quick File Navigation)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-m>` | n | Add file to Harpoon |
| `<C-e>` | n | Toggle Harpoon quick menu |
| `<C-j>` | n | Jump to Harpoon file 1 |
| `<C-k>` | n | Jump to Harpoon file 2 |
| `<C-l>` | n | Jump to Harpoon file 3 |
| `<C-;>` | n | Jump to Harpoon file 4 |

## Telescope (Fuzzy Finder)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-f>` | n | Find files |
| `<C-p>` | n | List open buffers |
| `<C-s>` | n | Live grep (search in files) |
| `<leader>ps` | n | Grep with custom search string |

## LSP (Language Server Protocol)

### Navigation
| Shortcut | Mode | Description |
|----------|------|-------------|
| `gd` | n | Go to definition |
| `gD` | n | Go to declaration |
| `gr` | n | Find references |
| `gi` | n | Go to implementation |
| `gt` | n | Go to type definition |

### Documentation & Help
| Shortcut | Mode | Description |
|----------|------|-------------|
| `K` | n | Hover documentation |
| `<C-k>` | n | Signature help |

### Actions
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>rn` | n | Rename symbol |
| `<leader>aw` | n | Code actions |
| `<leader>ff` | n | Format file |

### Diagnostics
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>e` | n | Show diagnostic float |
| `<leader>q` | n | Diagnostics to location list |
| `[d` | n | Previous diagnostic |
| `]d` | n | Next diagnostic |

### Workspace
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>wa` | n | Add workspace folder |
| `<leader>wr` | n | Remove workspace folder |
| `<leader>wl` | n | List workspace folders |

## Git (Fugitive)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>gs` | n | Git status |
| `<leader>gC` | n | Git commit |
| `<leader>gp` | n | Git push |
| `<leader>gP` | n | Git pull |

**Inside Fugitive buffer (`<leader>gs`):**
| Shortcut | Description |
|----------|-------------|
| `s` | Stage file |
| `u` | Unstage file |
| `=` | Toggle inline diff |
| `cc` | Commit |
| `ca` | Amend commit |
| `X` | Discard changes |

## Diffview (Git Diff UI)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>gd` | n | Open Diffview |
| `<leader>gc` | n | Close Diffview |
| `<leader>gh` | n | Current file history |
| `<leader>gH` | n | Branch history |

**Inside Diffview:**
| Shortcut | Description |
|----------|-------------|
| `-` | Toggle stage/unstage (file or hunk) |
| `s` | Stage file |
| `S` | Stage all |
| `X` | Discard changes |
| `<Tab>` | Next file |
| `<S-Tab>` | Previous file |

## Comments

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-c>` | n/v/i | Toggle comment |

## Terminal (ToggleTerm)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-\>` | n | Toggle terminal |
| `<leader>tt` | n | Toggle general terminal |
| `<leader>tf` | n | Toggle Flutter logs terminal |
| `<Esc>` | t | Exit terminal mode |
| `<C-h/j/k/l>` | t | Navigate windows from terminal |

## Flutter Development

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>fa` | n | Flutter Run |
| `<leader>fs` | n | Flutter Run (dev flavor) |
| `<leader>fD` | n | Flutter Devices |
| `<leader>fr` | n | Flutter Restart |
| `<leader>fd` | n | Flutter Outline Toggle |
| `<leader>fl` | n | Flutter Log Toggle |
| `<leader>fq` | n | Flutter Quit |

## Derry Commands (Flutter/Dart)

### Terminal Toggles
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>dB` | n | Derry Build (terminal) |
| `<leader>dW` | n | Derry Watch (terminal) |
| `<leader>dL` | n | Derry Locale (terminal) |

### Quick Commands
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>db` | n | Derry Build (quick) |
| `<leader>dw` | n | Derry Watch (quick) |
| `<leader>dl` | n | Derry Locale (quick) |
| `<leader>dd` | n | Derry Dev (quick) |

## Completion (nvim-cmp)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<Tab>` | i | Next completion item / expand snippet |
| `<S-Tab>` | i | Previous completion item |
| `<CR>` | i | Confirm completion |
| `<C-e>` | i | Trigger completion manually |
| `<C-c>` | i | Abort completion |

## Supermaven (AI Completion)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<Tab>` | i | Accept suggestion |
| `<C-]>` | i | Clear suggestion |
| `<C-j>` | i | Accept word |

## Which-Key

Press `<leader>` and wait ~300ms to see available keybindings.

---

*Mode legend: n=normal, i=insert, v=visual, x=visual block, t=terminal*
