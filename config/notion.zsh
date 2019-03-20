export NOTION_HOME=~/.notion

if [ -d "$NOTION_HOME" ]; then
  source "$NOTION_HOME/load.sh"
  export PATH=$NOTION_HOME/bin:$PATH
fi
