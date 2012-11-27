#
# ~/.zshrc
#

# base
export LANG=ja_JP.UTF-8
export LSCOLORS=gxfxcxdxbxegedabagacad
bindkey -v
setopt nolistbeep

# prompt
PROMPT='[%n@%m]$ '
RPROMPT='[%~]'

# completion
autoload -U compinit
compinit
setopt auto_cd
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history
setopt auto_pushd
setopt pushd_ignore_dups

# alias
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -rf'
alias r='rails'
alias v='vim'
alias g='git'
alias rb='ruby'
alias py='python'
alias ls="ls -G"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
PATH=$PATH:$HOME/.rvm/bin
