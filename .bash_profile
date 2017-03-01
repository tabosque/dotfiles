# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH="$HOME/.rbenv/bin:$PATH"
export PATH
eval "$(rbenv init -)"