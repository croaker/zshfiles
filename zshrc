# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Daniel Gruenthal
#
# INSPIRED BY (or stolen from..):
#   Geoffrey Grosenbach http://peepcode.com
#   Oh My Zsh https://github.com/robbyrussell/oh-my-zsh

# Colors
autoload -U colors
colors
setopt prompt_subst

# Load all config files
for config_file (~/.zshfiles/lib/*.zsh) source $config_file

# Load bundles
for zsh_file (~/.zshfiles/bundle/**/*.zsh) source $zsh_file

# Load the theme, if necessary
if [ -f ~/.zshtheme ]; then
  source ~/.zshtheme
else
  source ~/.zshfiles/colors/default.zsh
fi
 
# Prompt
local exit_status="%(?,%{$FG[$PC_GOOD_EXIT]%}\$%{$reset_color%},%{$FG[$PC_BAD_EXIT]%}\$%{$reset_color%})"
if [ -n "$SSH_CLIENT" ]; then
  local ssh_info="%{$FG[001]%}➠ %m%{$reset_color%} "
fi

PROMPT='
%~ $(~/bin/git-cwd-info.rb)
${ssh_info}${exit_status} %{$reset_color%}'

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

export EDITOR="vim"

# Use emacs key bindings
bindkey -e
