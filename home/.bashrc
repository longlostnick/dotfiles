[[ -s "$HOME/.bashrc-secrets" ]] && source "$HOME/.bashrc-secrets"

# aliases
alias grep="grep --color"
alias lp="ls -p"
alias la="ls -a"
alias l="ls -al|awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'"
alias tree="find . -type d | sed -e 's/[^-][^\/]*\// |/g' -e 's/|\([^ ]\)/|-\1/'"
alias tagme="ctags --sort=yes --links=no --languages=Python --exclude='.git' --exclude='.mypy' -R ."

# super special SSL cert helper
function ssl_buddy() {
  curl --insecure -v $1 2>&1 | awk 'BEGIN { cert=0 } /^\* Server certificate:/ { cert=1 } /^\*/ { if (cert) print }'
}

# git stuff
alias gs="git status"
alias gk="git checkout"
alias gm="git merge"
alias ga="git add ."
alias gp="git pull"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
function gc() { git commit -m "$*"; }
function gd() { git diff --color $* | sed -E "s/^([^-+ ]*)[-+ ]/\\1/" | less -R; }

# show git branch
#parse_git_dirty () {
#  [[ $(git status --porcelain 2> /dev/null | wc -l) -gt 0 ]] && echo "*"
#}
#parse_git_branch () {
#  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty) /"
#}

# configure my multi-line prompt
#export PS1="\[\033[00m\]\u@\h\[\033[1;33m\] \w \[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

export EDITOR='/usr/bin/vim'
