# Virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
  export VIRTUAL_ENV_DISABLE_PROMPT=1
  export WORKON_HOME=$HOME/.virtualenvs
  source /usr/local/bin/virtualenvwrapper.sh
fi
