set -o vi
if [ `uname -s` = "Darwin" ]
then
  export CLICOLOR="true"
  export LSCOLORS="exfxcxdxbxegedabagacad"
  alias gap="python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py &> /dev/null &"
  alias wall="python ~/Proxy/wallproxy/local/proxy.py &> /dev/null &"
  alias mac="sudo chmac"
fi
