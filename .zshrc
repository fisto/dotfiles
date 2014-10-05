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

#alias
source ~/.dotfiles/.zshrc.alias

# tmux
# [[ -z "$TMUX" && ! -z "$PS1" ]] && tmux -f ~/.dotfiles/.tmux.conf

export LC_CTYPE=UTF-8
export LC_NUMERIC="ja_JP.UTF-8"
export LC_TIME="ja_JP.UTF-8"
export LC_COLLATE="ja_JP.UTF-8"
export LC_MONETARY="ja_JP.UTF-8"
export LC_MESSAGES="ja_JP.UTF-8"
export LC_PAPER="ja_JP.UTF-8"
export LC_NAME="ja_JP.UTF-8"
export LC_ADDRESS="ja_JP.UTF-8"
export LC_TELEPHONE="ja_JP.UTF-8"
export LC_MEASUREMENT="ja_JP.UTF-8"
export LC_IDENTIFICATION="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"
