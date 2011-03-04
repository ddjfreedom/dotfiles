# Modify PATH
if [ (uname -s) = "Darwin" ]
  set -e PATH[7]
  set PATH /usr/local/bin/ $PATH /usr/texbin/
  set -x GIT_EDITOR vim
  
  function gap
    python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py >/dev/null ^&1 &
  end
  
  function wall
    python ~/Proxy/wallproxy/local/proxy.py >/dev/null ^&1 &
  end
end
