# aliases
alias cd.="cd .."
alias grep="grep --color"
alias h=history
alias lp="ls -p"
alias la="ls -a"
alias l="ls -al|awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'"
alias tree="find . -type d | sed -e 's/[^-][^\/]*\// |/g' -e 's/|\([^ ]\)/|-\1/'"

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
