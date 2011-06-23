# Modify PATH
if [ (uname -s) = "Darwin" ]
  set -e PATH[7]
  set PATH /usr/local/bin/ /usr/local/sbin/ $PATH /usr/texbin/
  set -e PATH[8]
  set PATH ~/.gem/ruby/1.8/bin/ $PATH
  set -x GIT_EDITOR vim
  
  set -x PAGER vimpager

  set -x CLASSPATH $CLASSPATH /usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
  function less
    vimpager $argv
  end

  function gap
    python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py >/dev/null ^&1 &
  end
  
  function wall
    python ~/Proxy/wallproxy/local/proxy.py >/dev/null ^&1 &
  end

  function go
    python ~/Proxy/goagent/local/proxy.py >/dev/null ^&1 &
  end

  function vmtrans
    for i in (seq 3 (count $argv))
      scp -B -P $argv[1] $argv[$i] ddj@localhost:./$argv[2]/$argv[$i]
    end
  end

  function minix
    vmtrans 2221 minix $argv
  end

  function gentoo
    vmtrans 2222 developer/kernel $argv
  end
end
