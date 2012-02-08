ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty -F' || alias ls='ls -GF'

alias l="ls -lAh"
alias ll="ls -l"
alias la='ls -A'

alias tmux="TERM=screen-256color-bce tmux"
