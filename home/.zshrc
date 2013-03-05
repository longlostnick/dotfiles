# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3 ruby osx brew)

# Bash-like navigation
autoload -U select-word-style
select-word-style bash

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$HOME/.rbenv/bin:/usr/X11/bin:/usr/local/bin:$PATH"

# some of my own stuff
alias cd.='cd ..'
alias la='ls -a'
alias l='ls -latr'

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# stuff
alias linkup="sudo route add 192.168.200.0 192.168.74.250 -netmask 255.255.252.0"

# mac crap
alias dotclean="find . \( -name '._*' -o -name '.DS_Store' \)  -exec rm {} \;"
export COPYFILE_DISABLE=true

# TODO: find a better place for this
bindkey '^[[1;9D' backward-word
bindkey '^[[1;9C' forward-word

eval "$(rbenv init -)"
