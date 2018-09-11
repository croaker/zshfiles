# Add /usr/local and zshfiles' binaries
export PATH=~/bin:~/.zshfiles/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Ruby configs, if available
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Configure locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#Make <c-s> and <c-q> work
stty stop '' -ixon -ixoff

# Load local settings
[ -f "~/.zshenv.local" ] && source "~/.zshenv.local"
