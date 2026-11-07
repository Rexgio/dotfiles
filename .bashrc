#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export PATH=$PATH:/home/smav/.spicetify
export OMARCHY_PATH=~/.local/share/omarchy
export PATH=$OMARCHY_PATH/bin:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
