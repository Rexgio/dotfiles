# ============================
#   PATH
# ============================
export PATH="$HOME/.local/bin:$PATH"

# ============================
#   HISTORIAL
# ============================
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

# ============================
#   OPCIONES GENERALES
# ============================
setopt AUTO_CD
setopt EXTENDED_GLOB
unsetopt CORRECT
unsetopt CORRECT_ALL
unsetopt LIST_BEEP

# ============================
#   COMPLETADO
# ============================
fpath+=~/.zsh/zsh-completions/src
autoload -Uz compinit && compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' list-prompt ''
zstyle ':completion:*' select-prompt ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# ============================
#   FZF y ZOXIDE
# ============================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# ============================
#   ALIASES
# ============================
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias tm='tmux attach || tmux new'

command -v batcat >/dev/null && alias cat='batcat'
command -v nvim   >/dev/null && alias vim='nvim'

# ============================
#   STARSHIP
# ============================
eval "$(starship init zsh)"

# ============================
#   PLUGINS (el orden importa)
# ============================
# 1) autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#928374'
ZSH_AUTOSUGGEST_STRATEGY=(history)
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=40
# Limpiar la sugerencia antes de completar con Tab (evita restos)
ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(expand-or-complete complete-word)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# 2) syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 3) history-substring-search (siempre el último)
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ============================
#   TMUX (opcional, al final)
# ============================
if [[ -z "$TMUX" ]] && [[ -n "$PS1" ]]; then
    tmux attach -t main || tmux new -s main
fi
