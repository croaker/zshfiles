export PATH=$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
[ -n `which rbenv` ] && eval "$(rbenv init -)"

# Add q'n'd support for bundler's binstubs
export PATH=.bin:$PATH

# Make <c-s> and <c-q> work
stty stop '' -ixon -ixoff
