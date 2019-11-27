export ANDROID_HOME=$HOME/Library/Android/sdk

if [ -d "$ANDROID_HOME" ]; then
  export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:\
$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools
else
  unset ANDROID_HOME
fi
