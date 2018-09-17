export NVM_NO_USE=true
local BREW_NVM_PATH="/usr/local/opt/nvm"

if [ -d "$BREW_NVM_PATH" ]; then
  export NVM_DIR=$BREW_NVM_PATH
else
  export NVM_DIR="$HOME/.nvm"
fi
