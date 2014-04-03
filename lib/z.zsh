if [ -f $(which brew) ]; then
  local Z_PATH="$(brew --prefix)/etc/profile.d/z.sh"
  [ -f $Z_PATH ] && source $Z_PATH
fi
