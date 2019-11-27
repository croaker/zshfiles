export VOLTA_HOME="$HOME/.volta"

if [ -d "$VOLTA_HOME" ]; then
  . "$VOLTA_HOME/load.sh"
  export PATH="${VOLTA_HOME}/bin:$PATH"
else
  unset VOLTA_HOME
fi
