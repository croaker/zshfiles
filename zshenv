export PATH=$HOME/.rbenv/bin:$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
eval "$(rbenv init -)"

# Disable <c-s> and <c-q> in terminal-settings
stty stop '' -ixon -ixoff
