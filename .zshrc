# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kp"

COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(command-coloring mercurial nyan vi-mode hg git)

source $ZSH/oh-my-zsh.sh
# Customize to your needs...

unsetopt correct_all
alias tmux="tmux"
export TERM=xterm
export EDITOR=vim

PATH=".cabal/bin:"
PATH=$PATH"/bin:"
PATH=$PATH"/usr/local:"
PATH=$PATH"/usr/bin:"
PATH=$PATH"/usr/local/bin:"
PATH=$PATH"/usr/local/sbin:"
PATH=$PATH"$HOME/pear/bin:"
PATH=$PATH"/usr/sbin:"
PATH=$PATH"/sbin:"
PATH=$PATH"/usr/bin/core_perlkb:"
PATH=$PATH"/opt/vagrant/bin:"
PATH=$PATH"$HOME/.gem/ruby/1.9.1/bin:"
PATH=$PATH"/usr/local/mysql/bin:"
PATH=$PATH"/.rvm/scripts/rvm:"
PATH=$PATH"$HOME/bin/"

export PATH
export GREP_OPTIONS='--color=auto'
bindkey '^R' history-incremental-search-backward
#
# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=3000
SAVEHIST=10000 # nice for logging
setopt extended_history
setopt share_history
function history-all { history -E 1 }
# xmodmap $HOME/.Xmodmap

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Load RVM, if you are using it
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

. $HOME/bin/z/z.sh
function precmd () {
	_z --add "$(pwd -P)"
}

