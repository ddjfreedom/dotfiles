# Modify PATH
set -e PATH[7]
set PATH /usr/local/bin/ $PATH /usr/texbin/
set -x GIT_EDITOR vim

function gap
  python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py >/dev/null ^&1 &
end

function wall
  python ~/Proxy/wallproxy/local/proxy.py >/dev/null ^&1 &
end

# change file modes recursively
function rchmod
  set -l msg "change file modes recursively
usage: rchmod [directory-mode|- file-mode|-]|[-h]"
  if [ -z "$argv" ]
    echo $msg
  else
    if [ $argv[1] = "-h" ]
      echo $msg
    else
      if [ (count $argv) -lt 2 ]
        echo $msg
      else 
        for file in *
          if [ -d $file ]
            cd $file
            rchmod $argv
            cd ..
            if [ $argv[1] != "-" ]
              chmod $argv[1] $file
            end
          else
            if [ -f $file ] 
              if [ $argv[2] != "-" ]
                chmod $argv[2] $file
              end
            end
          end
        end
      end
    end
  end
end
