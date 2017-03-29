# .bashrc

export LSCOLORS=gxfxcxdxbxegedabagacad
if [ "$(uname)" != 'Darwin' ]; then
  export IP=`ip -f inet -o addr | grep -v "127.0.0.1" | cut -d\  -f 7 | cut -d/ -f 1 | awk 'NR == 1'`
fi
export PS1='\[\e[0;33m\]\u\e[0;37m\]@\h$IP \e[1;34m\]\w \n\e[1;35m\]\$ \e[0;37m\]'

# alias
alias ls='ls -hG'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'