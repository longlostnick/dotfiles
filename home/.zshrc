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

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/Nick/.rvm/gems/ruby-1.9.2-p290/bin:/Users/Nick/.rvm/gems/ruby-1.9.2-p290@global/bin:/Users/Nick/.rvm/rubies/ruby-1.9.2-p290/bin:/Users/Nick/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin

# some of my own stuff
alias cd.='cd ..'
alias ls='ls --color'
alias la='ls -a'

# rails aliases
alias brake="bundle exec rake"

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# stuff
alias linkup="sudo route add 192.168.200.0 192.168.74.250 -netmask 255.255.252.0"

# mac crap
alias dotclean="find . \( -name '._*' -o -name '.DS_Store' \)  -exec rm {} \;"
export COPYFILE_DISABLE=true

# Ruby Version Manager!
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
