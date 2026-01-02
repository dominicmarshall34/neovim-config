# Neovim Config

Configuration files for Neovim.

## Installation

Create the symlink:

```bash
ln -s ~/Code/neovim-config/nvim ~/.config/nvim
```

## Setup

On first launch, [lazy.nvim](https://github.com/folke/lazy.nvim) will automatically install itself and all plugins.

### Keymaps

#### Mini.pick
| Key | Action |
|-----|--------|
| `<Space>ff` | Find file |
| `<Space>fs` | Find string (grep live) |
| `<Space>fb` | Find buffer |
| `<Space>fh` | Find help tags |

#### System Clipboard
| Key | Action |
|-----|--------|
| `<Space>y` | Copy to system clipboard |
| `<Space>Y` | Copy line to system clipboard |
| `<Space>p` | Paste from system clipboard |
| `<Space>P` | Paste before from system clipboard |

#### LSP (default Nvim keybindings)
| Key | Action |
|-----|--------|
| `gra` | Code action |
| `gri` | Go to implementation |
| `grn` | Rename symbol |
| `grr` | Show references |
| `grt` | Go to type definition |
| `gO` | Document symbols |
| `K` | Hover documentation |
| `<C-s>` (insert mode) | Signature help |
