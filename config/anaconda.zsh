local ANACONDA_PATH="/anaconda3"

if [ -d "$ANACONDA_PATH" ]; then
  export PATH="$ANACONDA_PATH/bin:$PATH"

  perseus() {
    export PATH=`echo "$PATH" | sed -e "s|:\{0,1\}$ANACONDA_PATH/bin||g" | sed -e "s|^:||"`
    echo "--> 🤺 Medusa decapitated."
  }

  medusa() {
    export PATH="$ANACONDA_PATH/bin:$PATH"
    echo "--> 🐍 Perseus defeated."
  }

  anaconda_brew() {
    perseus
    command brew "$@"
    medusa
  }

  alias brew=anaconda_brew
else
  unset ANACONDA_PATH
fi
