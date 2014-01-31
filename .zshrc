#
# ~/.zshrc
#

# base
export LANG=ja_JP.UTF-8
export LSCOLORS=gxfxcxdxbxegedabagacad
setopt nolistbeep
bindkey -e
autoload -Uz add-zsh-hook

# prompt
PROMPT='[%n@%m]$ '
RPROMPT='[%~]'

# completion
autoload -U compinit
compinit
setopt auto_cd
setopt correct
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# git branch
autoload -U colors; colors

function rprompt-git-current-branch {
  local name st color
  if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
    return
  fi

  name=$(basename "`git symbolic-ref HEAD 2> /dev/null`")
  if [[ -z $name ]]; then
    return
  fi

  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    color=${fg[green]}
  elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
    color=${fg[yellow]}
  elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
    color=${fg_bold[red]}
  else
    color=${fg[red]}
  fi
  echo "%{$color%}$name%{$reset_color%} "
}

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

RPROMPT='[`rprompt-git-current-branch`%~]'

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

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

# zsh-notify
export SYS_NOTIFIER="/usr/local/bin/terminal-notifier"
source ~/.dotfiles/.zsh.d/zsh-notify/notify.plugin.zsh
