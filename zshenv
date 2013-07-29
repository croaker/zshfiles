# Add zshfiles' binaries
export PATH=~/.zshfiles/bin:$PATH

# If we are running boxen, use it
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

if [ -d $HOME/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
  eval "$(rbenv init -)"
elif [ -d /usr/local/rbenv ]; then
  export RBENV_ROOT=/usr/local/rbenv
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Ruby configs, if available
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

#Make <c-s> and <c-q> work
stty stop '' -ixon -ixoff
