ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty -FH' || alias ls='ls -GFH'

alias l="ls -lA"
alias ll="ls -l"
alias la='ls -A'

alias tmux="TERM=screen-256color-bce tmux"
