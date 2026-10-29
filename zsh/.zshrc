# ── History ────────────────────────────────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt share_history hist_ignore_dups hist_ignore_space

# ── Completion ─────────────────────────────────────────────
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select

# ── Keys ───────────────────────────────────────────────────
bindkey -e
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

# ── Env ────────────────────────────────────────────────────
export EDITOR=nvim
export VISUAL=nvim
export PATH="$HOME/.local/bin:$PATH"

# ── Aliases ────────────────────────────────────────────────
alias ls='ls --color=auto'
alias ll='ls -lah'
alias v='nvim'
alias g='git'
alias gs='git status -sb'
alias gl='git log --oneline --graph --decorate -20'
alias dc='docker compose'
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias update='sudo pacman -Syu'

# ── Tools ──────────────────────────────────────────────────
[[ -f /usr/share/fzf/key-bindings.zsh ]] && source /usr/share/fzf/key-bindings.zsh
[[ -f /usr/share/fzf/completion.zsh ]]   && source /usr/share/fzf/completion.zsh
command -v starship >/dev/null && eval "$(starship init zsh)"
