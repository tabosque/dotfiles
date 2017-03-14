# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH="$HOME/.rbenv/bin:$PATH"
export PATH
eval "$(rbenv init -)"