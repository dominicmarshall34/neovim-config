# Dotfiles

Configuration files for Neovim, Ghostty, and Claude Code.

## Installation

### Neovim

```bash
ln -s ~/Code/dotfiles/nvim ~/.config/nvim
```

### Ghostty

```bash
ln -s ~/Code/dotfiles/ghostty ~/.config/ghostty
```

### Claude Code

```bash
ln -s ~/Code/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -s ~/Code/dotfiles/claude/skills ~/.claude/skills
```


## Neovim Setup

On first launch, [lazy.nvim](https://github.com/folke/lazy.nvim) will automatically install itself and all plugins.

### Language Servers

The following LSPs need to be installed separately:

- **lua-language-server** - For Lua support
- **phpactor** - For PHP support
- **typescript-language-server** - For JavaScript/TypeScript support

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

#### LSP
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
| `<Space>cf` | Format code |

## Ghostty Setup

Configured with:
- Font: Hack Nerd Font
- Theme: TokyoNight Moon
- Client-side window decorations

## Troubleshooting

### Treesitter Compilation

If Treesitter is taking a long time to compile, ensure the Treesitter CLI is installed via npm:

```bash
npm install -g tree-sitter-cli
```
