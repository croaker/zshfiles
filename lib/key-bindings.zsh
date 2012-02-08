# Fix Mac OS X's keybinding
bindkey '^?' backward-delete-char
bindkey '^[[3~' delete-char

# Make the delete key (or Fn + Delete on the Mac) work instead of outputting a ~
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char
bindkey "^[3;5~" delete-char
bindkey "\e[3~" delete-char
