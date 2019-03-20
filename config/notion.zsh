export NOTION_HOME=~/.notion

if [ -d "$NOTION_HOME" ]; then
  export PATH=$NOTION_HOME/bin:$PATH
fi
