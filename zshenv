export PATH=$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
[ -n `which rbenv` ] && eval "$(rbenv init -)"

# Add q'n'd support for bundler's binstubs
export PATH=bin:$PATH

# Make NPM aware of modules (if installed with brew)
export NODE_PATH=/usr/local/lib/node_modules

# Ruby configs, if available
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

#Make <c-s> and <c-q> work
stty stop '' -ixon -ixoff
