local chruby_path=/usr/local/share/chruby

if [ -d "$chruby_path" ]; then
  source "$chruby_path/chruby.sh"
  [ -f ~/.ruby-version ] && chruby $(cat ~/.ruby-version) 
fi
