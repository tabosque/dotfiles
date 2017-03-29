# .bashrc

export LSCOLORS=gxfxcxdxbxegedabagacad
export IP=`/sbin/ifconfig eth0 | grep 'inet addr:' | cut -c 21-34 | sed 's/ //g'`
export PS1='\[\e[0;33m\]\u\e[0;37m\]@\h$IP \e[1;34m\]\w \n\e[1;35m\]\$ \e[0;37m\]'

# alias
alias ls='ls -hG'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
if [ -e /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ]; then
  alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
fi