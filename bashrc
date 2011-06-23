export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH
export PS1="\u@\h \w> "
export PAGER=vimpager
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export CLICOLOR="true"
export LSCOLORS="exfxcxdxbxegedabagacad"
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
