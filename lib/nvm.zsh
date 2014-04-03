local NVM_PATH=""

if [ -d ~/.nvm ]; then
  NVM_PATH="~/.nvm"
elif [ -f "$(which brew)" ]; then
  NVM_PATH=$(brew --prefix nvm 2> /dev/null)
fi;

if [ ! -z $NVM_PATH ]; then
  source $NVM_PATH/nvm.sh
fi
