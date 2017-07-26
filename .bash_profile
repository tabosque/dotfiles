# .bash_profile

has() {
  type "$1" > /dev/null 2>&1
}

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if has "brew"; then
  # bash-completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

PATH=$PATH:$HOME/bin
if has "rbenv"; then
  PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
if has "go"; then
  PATH="$HOME/go/bin:$PATH"
fi
export PATH

export GOPATH=$HOME/go
