# .bashrc

export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1='\[\e[0;33m\]\u \e[1;34m\]\w \n\e[1;35m\]\$ \e[0;37m\]'

# alias
alias ls='ls -hG'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
if has('mac'); then
  alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
fi