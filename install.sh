#!/usr/bin/env bash
# Symlink dotfiles into $HOME. Existing files are backed up as <file>.bak
set -euo pipefail

DOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

link() {
  local src="$DOT/$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [[ -e "$dst" && ! -L "$dst" ]]; then
    mv "$dst" "$dst.bak"
    echo "backup  $dst -> $dst.bak"
  fi
  ln -sfn "$src" "$dst"
  echo "link    $dst -> $src"
}

if [[ "${1:-}" == "--packages" ]]; then
  command -v pacman >/dev/null || { echo "pacman not found (Arch only)"; exit 1; }
  sudo pacman -S --needed --noconfirm - < "$DOT/packages.txt"
fi

link hypr/hyprland.conf  "$HOME/.config/hypr/hyprland.conf"
link waybar              "$HOME/.config/waybar"
link kitty/kitty.conf    "$HOME/.config/kitty/kitty.conf"
link nvim                "$HOME/.config/nvim"
link zsh/.zshrc          "$HOME/.zshrc"
link git/.gitconfig      "$HOME/.gitconfig"

echo "done ✔"
