# Modify PATH
if [ (uname -s) = "Darwin" ]
  set -e PATH[7]
  set PATH /usr/local/bin/ /usr/local/sbin/ $PATH /usr/texbin/
  set -e PATH[8]
  set PATH ~/.gem/ruby/1.8/bin/ $PATH
  set -x GIT_EDITOR vim
  
  set -x PAGER vimpager

  function less
    vimpager $argv
  end

  function gap
    python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py >/dev/null ^&1 &
  end
  
  function wall
    python ~/Proxy/wallproxy/local/proxy.py >/dev/null ^&1 &
  end
end
