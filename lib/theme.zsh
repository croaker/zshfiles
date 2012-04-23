if [ "$TERM" != "dumb" ]; then
 if [ $(uname) == "Linux"  ]; then
   alias ls='ls --color=auto'
   LS_COLORS='di=33:fi=0:ln=95:pi=5:so=5:bd=5:cd=5:or=37:mi=0:ex=31:*.rpm=90'
 else
   alias ls='ls -G'
   export LSCOLORS=dxfxcxdxbxegedabagacad
 fi
 export CLICOLOR=1
fi
