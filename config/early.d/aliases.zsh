ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty -FH' || alias ls='ls -GFH'

alias l="ls -lA"
alias ll="ls -l"
alias la='ls -A'

# If git is aliased to hub, wrap it in a function
if $(alias | grep -q '^git='); then
  unalias git

  git() { hub; }
fi
