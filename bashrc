HISTCONTROL=ignoredups

set -o notify
set -o emacs

shopt -s cdspell
shopt -s autocd
shopt -s dirspell
shopt -s cmdhist
shopt -s no_empty_cmd_completion

export COPYFILE_DISABLE=yes
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PS1="\u@\h \w> "
export PAGER=vimpager
export EDITOR=/usr/local/bin/vim
export CLICOLOR="true"
export LSCOLORS="exfxcxdxbxegedabagacad"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

alias ..="cd .."
alias ...="cd ../.."
alias reload=". ~/.bash_profile"
alias l="ls"
alias ll="ls -l"
alias la="ls -la"
alias gap="python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py &> /dev/null &"
alias wall="python ~/Proxy/wallproxy/local/proxy.py &> /dev/null &"
alias go="python ~/Proxy/goagent/local/proxy.py &> /dev/null &"
alias psg="ps aux | grep"

vmtrans () {
  port=$1
  basepath=$2
  shift 2
  for i in "$@"
  do
    scp -P $port $i ddj@localhost:./$basepath/$i
  done
}

minix () {
  vmtrans 2221 minix "$@"
}

gentoo () {
  vmtrans 2222 developer/kernel "$@"
}

extract () {
  if [ $# -lt 1 ]
  then
    echo Usage: extract file
    return 1
  fi
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjvf $1 ;;
      *.tar.gz)  tar xvzf $1 ;;
      *.tar)     tar xvf $1  ;;
      *.bz2)     bunzip2 $1  ;;
      *.gz)      gunzip $1   ;;
      *.tbz2|*.tbz)    tar xvjf $1 ;;
      *.tgz)     tar xvzf $1 ;;
      *.rar)     unrar x $1  ;;
      *.zip)     unzip $1    ;;
      *.7z)      7z x $1     ;;
      *)         echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

roll () {
  if [ "$#" -ne 0 ] ; then
    FILE="$1"
    case "$FILE" in
      *.tar.bz2|*.tbz2) shift && tar cvjf "$FILE" $* ;;
      *.tar.gz|*.tgz)   shift && tar cvzf "$FILE" $* ;;
      *.tar)            shift && tar cvf "$FILE" $* ;;
      *.zip)            shift && zip "$FILE" $* ;;
      *.7z)             shift && 7zr a "$FILE" $* ;;
      *)                echo "'$1' cannot be rolled via roll()" ;;
    esac
  else
    echo "usage: roll [file] [contents]"
  fi
}

# disable XON/XOFF to restore C-s forward search
stty -ixon
