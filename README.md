# dotfiles ⚙️

My Arch Linux setup: **Hyprland** + **Waybar** + **kitty** + **zsh** + **Neovim**.
Managed with plain symlinks — no frameworks, one script.

## What's inside

| Path | Links to | Notes |
|---|---|---|
| `hypr/hyprland.conf` | `~/.config/hypr/hyprland.conf` | Dwindle layout, vim-style focus keys, per-workspace rules |
| `waybar/` | `~/.config/waybar/` | Workspaces, clock, CPU/RAM, network, audio |
| `kitty/kitty.conf` | `~/.config/kitty/kitty.conf` | JetBrains Mono Nerd Font, dark theme |
| `nvim/` | `~/.config/nvim/` | lazy.nvim, Telescope, Treesitter, LSP (lua, ts, python, bash) |
| `zsh/.zshrc` | `~/.zshrc` | History, completion, aliases, fzf, starship prompt |
| `git/.gitconfig` | `~/.gitconfig` | Aliases, rebase on pull, nicer diffs |

## Install

```bash
git clone https://github.com/Lvc-IOS/dotfiles ~/dotfiles
cd ~/dotfiles
./install.sh            # symlinks everything, backs up existing files to *.bak
./install.sh --packages # also installs the Arch packages listed in packages.txt
```

## Keybinds (Hyprland)

| Keys | Action |
|---|---|
| `Super + Enter` | kitty |
| `Super + D` | app launcher (wofi) |
| `Super + Q` | close window |
| `Super + H/J/K/L` | move focus |
| `Super + Shift + H/J/K/L` | move window |
| `Super + 1..9` | switch workspace |
| `Super + Shift + 1..9` | move window to workspace |
| `Super + F` | fullscreen |
| `Super + V` | toggle floating |
| `Print` | screenshot region to clipboard |

## License

MIT
