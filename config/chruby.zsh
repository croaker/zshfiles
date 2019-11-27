export CHRUBY_PATH=/usr/local/share/chruby

if [ -d "$CHRUBY_PATH" ]; then
  source "$CHRUBY_PATH/chruby.sh"
  source "$CHRUBY_PATH/auto.sh"
  [ -f ~/.ruby-version ] && chruby $(cat ~/.ruby-version) 
else
  unset CHRUBY_PATH
fi
