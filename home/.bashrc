# aliases
alias grep="grep --color"
alias lp="ls -p"
alias la="ls -a"
alias l="ls -al|awk '{k=0;s=0;for(i=0;i<=8;i++){;k+=((substr(\$1,i+2,1)~/[rwxst]/)*2^(8-i));};j=4;for(i=4;i<=10;i+=3){;s+=((substr(\$1,i,1)~/[stST]/)*j);j/=2;};if(k){;printf(\"%0o%0o \",s,k);};print;}'"
alias tree="find . -type d | sed -e 's/[^-][^\/]*\// |/g' -e 's/|\([^ ]\)/|-\1/'"

# git aliases
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# git+prompt fanciness
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/git:(\1$(parse_git_dirty)) /"
}

# configure my multi-line prompt
PS1='\u@\h$ $(parse_git_branch)'

export PATH="/usr/local/bin:$PATH" # homebrew
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
