# Modify PATH
set -l newpathelement /opt/local/bin /opt/local/sbin /usr/local/git/bin /usr/local/bin
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

# change file modes recursively
function rchmod
  if [ $argv[1] = "-h" ]
    echo change file modes recursively
    echo usage: rchmod directory-mode file-mode
  else
    for file in *
      if [ -d $file ]
        cd $file
        rchmod $argv
        cd ..
        chmod $argv[1] $file
      else
        if [ -f $file ]
          chmod $argv[2] $file
        end
      end
    end
  end
end
