# Add /usr/local and zshfiles' binaries
export PATH=~/.zshfiles/bin:/usr/local/bin:/usr/local/sbin:$PATH

# rbenv compatibility
if [ -d $HOME/.rbenv ]; then
  export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$PATH
  eval "$(rbenv init -)"
fi

# Ruby configs, if available
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

#Make <c-s> and <c-q> work
stty stop '' -ixon -ixoff
