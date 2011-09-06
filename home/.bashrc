# aliases
alias cd.="cd .."
alias grep="grep --color"
alias l="ls -al"
alias lp="ls -p"
alias la="ls -a"
alias h=history

# rails aliases
alias brake="bundle exec rake spec"

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# FBS aliases
alias cdfrink="cd /Volumes/Frink/"
alias cdfarns="cd /Volumes/Farnsworth/"
alias linkup="sudo route add 192.168.200.0 192.168.74.250 -netmask 255.255.252.0"

# mac aliases
alias dotclean="find . \( -name '._*' -o -name '.DS_Store' \)  -exec rm {} \;"
alias saver="/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine"

# configure my multi-line prompt
PS1='
$PWD
[\u@\h]$ '

# iterm tab titles!
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
