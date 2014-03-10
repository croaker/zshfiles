local chruby_path=/usr/local/share/chruby

if [ -d "$chruby_path" ]; then
  source "$chruby_path/chruby.sh"
  source "$chruby_path/auto.sh"
  chruby $(cat ~/.ruby-version) 
fi
