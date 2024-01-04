# .bashrc

export LSCOLORS=gxfxcxdxbxegedabagacad
if [ "$(uname)" != 'Darwin' ]; then
  export IP=`ip -f inet -o addr | grep -v "127.0.0.1" | cut -d\  -f 7 | cut -d/ -f 1 | awk 'NR == 1'`
else
  export IP='local'
fi
export PS1='\[\e[0;33m\]\u\e[0;37m\]@\h($IP) \e[1;34m\]\w \n\e[1;35m\]\$ \e[0;37m\]'

# alias
alias sudo='sudo -E '
alias ls='ls -hG'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias be='bundle exec'
alias r='bundle exec rails'
alias now='date +%Y%m%d%H%M%S'

if has "colordiff"; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

# history command
HISTSIZE=10000

# load local .bashrc file
if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi
