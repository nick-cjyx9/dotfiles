export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="omuse/omuse"

alias cls="clear"
alias la="ls -la"
alias cc="gcc"
alias pp="g++"
alias open="explorer.exe"

setopt no_nomatch
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' frequency 13
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
