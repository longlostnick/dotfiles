# aliases
alias grep="grep --color"
alias ls="ls -F --color"
alias lp="ls -p"
alias la="ls -a"
alias l="ls -al|awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'"
alias tree="find . -type d | sed -e 's/[^-][^\/]*\// |/g' -e 's/|\([^ ]\)/|-\1/'"

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# stuff
alias linkup="sudo route add 192.168.200.0 192.168.74.250 -netmask 255.255.252.0"

# minecraft
alias servcraft="java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui"

# mongo
alias mongod="sudo /usr/local/Cellar/mongodb/1.8.3-x86_64/bin/mongod --fork --logpath /var/log/mongod.log"

# mac crap
alias dotclean="find . \( -name '._*' -o -name '.DS_Store' \)  -exec rm {} \;"

# git+prompt fanciness
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/git:(\1) /'
}

# configure my multi-line prompt
PS1='
$PWD
[\u@\h]$ $(parse_git_branch)'

# iterm tab titles!
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
