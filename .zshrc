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
# setopt CORRECT   # <- coméntalo, suele molestar con autosuggestions

# PATH primero
export PATH="$HOME/.local/bin:$PATH"

# ============================
#   COMPLETADO (fpath ANTES de compinit)
# ============================
fpath+=~/.zsh/zsh-completions/src
autoload -Uz compinit && compinit

# ============================
#   FZF y ZOXIDE
# ============================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# ============================
#   ALIASES (con funciones, no con ||)
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
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#928374'

# syntax-highlighting SIEMPRE después de autosuggestions
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history-substring-search SIEMPRE el último
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# ============================
#   TMUX (siempre al final)
# ============================
if [[ -z "$TMUX" ]] && [[ -n "$PS1" ]]; then
    tmux attach -t main || tmux new -s main
fi
