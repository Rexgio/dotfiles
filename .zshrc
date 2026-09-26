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
setopt AUTO_CD              # escribir solo el nombre de la carpeta para entrar
setopt CORRECT              # corrección de comandos mal escritos
setopt EXTENDED_GLOB
autoload -Uz compinit && compinit

# ============================
#   PLUGINS
# ============================
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
fpath+=~/.zsh/zsh-completions/src

# Flechas arriba/abajo = buscar en historial por substring
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Color de autosugerencias (gris gruvbox)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#928374'

# fzf (autocompletado ** y Ctrl+R mejorado)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide (cd inteligente)
# 1º: PATH primero, siempre arriba del todo
export PATH="$HOME/.local/bin:$PATH"


# al final, o al menos después del export PATH:
eval "$(zoxide init zsh)"

# ============================
#   ALIASES ÚTILES
# ============================
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias la='ls -A --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias cd='z'                      # usa zoxide en vez de cd normal
alias cat='batcat 2>/dev/null || cat'   # usa 'bat' si está instalado
alias vim='nvim 2>/dev/null || vim'
alias tm='tmux attach || tmux new'      # abrir/entrar en tmux con un solo comando

# ============================
#   STARSHIP (prompt)
# ============================
eval "$(starship init zsh)"

# ============================
#   AUTOARRANCAR TMUX (opcional)
# ============================
if [[ -z "$TMUX" ]] && [[ -n "$PS1" ]]; then
    tmux attach -t main || tmux new -s main
fi
