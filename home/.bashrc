# aliases
alias grep="grep --color"
alias lp="ls -p"
alias la="ls -a"
alias l="ls -al|awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'"
alias tree="find . -type d | sed -e 's/[^-][^\/]*\// |/g' -e 's/|\([^ ]\)/|-\1/'"

[[ -s "$HOME/.bashrc-secrets" ]] && source "$HOME/.bashrc-secrets"

# git stuff
alias gs="git status"
alias go="git checkout"
alias gm="git merge"
alias ga="git add ."
alias gp="git pull"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
function gc() { git commit -m "$*"; }
function gcb() { git commit -m "$(git rev-parse --abbrev-ref HEAD): $*"; }
#function gpb() { git push origin $(git rev-parse --abbrev-ref HEAD); }
function gd() { git diff --color $* | sed -E "s/^([^-+ ]*)[-+ ]/\\1/" | less -R; }

# show git branch
parse_git_dirty () {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
parse_git_branch () {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty) /"
}

# configure my multi-line prompt
export PS1="\[\033[00m\]\u@\h\[\033[1;33m\] \w \[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

export PATH="/usr/local/bin:$PATH" # homebrew
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# python stuff
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/PythonDev
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

# node stuff
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# docker stuff
#export DOCKER_CERT_PATH=/Users/nick/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export NVM_DIR="/root/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export DISABLE_SPRING=true
