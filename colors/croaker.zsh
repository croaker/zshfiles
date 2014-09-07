## Prompt
# Exit status
export PC_GOOD_EXIT=154
export PC_BAD_EXIT=197

# Git prompt
export PC_GIT_CHANGES=161
export PC_GIT_UNTRACKED=154
export PC_GIT_BRANCH=208

## ls colors
if [ "$TERM" != "dumb" ]; then
  if [ `uname` = "Linux" ]; then
    LS_COLORS='di=33:fi=0:ln=95:pi=5:so=5:bd=5:cd=5:or=37:mi=0:ex=31:*.rpm=90'
  else
    export LSCOLORS=ExFxBxDxCxegedabagacad
  fi
  export CLICOLOR=1
fi
