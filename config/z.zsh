if which -s brew 2>&1 > /dev/null; then
  local Z_PATH="/usr/local/etc/profile.d/z.sh"
  [ -f "$Z_PATH" ] && source $Z_PATH
fi
