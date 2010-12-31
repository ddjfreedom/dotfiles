##
# Your previous /Users/ddj/.bash_profile file was backed up as /Users/ddj/.bash_profile.macports-saved_2010-07-09_at_13:11:12
##

# MacPorts Installer addition on 2010-07-09_at_13:11:12: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
fi
set -o vi
export CLICOLOR="true"
export LSCOLORS="exfxcxdxbxegedabagacad"
alias gap="python ~/Proxy/gappproxy/localproxy-2.0.0/proxy.py &> /dev/null &"
alias wall="python ~/Proxy/wallproxy/local/proxy.py &> /dev/null &"
alias mac="sudo chmac"
