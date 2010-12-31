# Modify PATH
set -l newpathelement /opt/local/bin /usr/local/git/bin /usr/local/bin
set -l index 0
# remove every element of newpathelement in PATH
for i in $PATH
  set index (math $index + 1)
  for p in $newpathelement
    if test $i = $p
      set -e PATH[$index]
      set index (math $index - 1)
    end
  end
end
set -x PATH $newpathelement $PATH

function gap
  python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py >/dev/null ^&1 &
end

function wall
  python ~/Proxy/wallproxy/local/proxy.py >/dev/null ^&1 &
end
