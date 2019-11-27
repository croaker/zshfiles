# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Daniel Gruenthal
#
# INSPIRED BY (or stolen from..):
#   Geoffrey Grosenbach http://peepcode.com
#   Oh My Zsh https://github.com/robbyrussell/oh-my-zsh

# Configure locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Add zshfiles bin to path
export PATH=~/.zshfiles/bin:/usr/local/bin:/usr/local/sbin:$PATH

fpath=(~/.zshfiles/completion $fpath)

# Before we do anything make sure we're running tmux
# if [ "$TMUX" = "" ]; then 
#   tmux attach -t base || tmux new -s base; 
# fi

# Colors
autoload -U colors
colors
setopt prompt_subst

# Load the theme, if necessary
if [ -f ~/.zshtheme ]; then
  source ~/.zshtheme
else
  source ~/.zshfiles/colors/default.zsh
fi

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

export EDITOR="vim"

# Use emacs key bindings
bindkey -e

# Load early config files
for config_file (~/.zshfiles/config/early.d/*.zsh) source $config_file

# Load bundles
source /usr/local/share/antigen/antigen.zsh

antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search # must be last!

antigen apply

# Load all config files
for config_file (~/.zshfiles/config/*.zsh) source $config_file

# Prompt
local exit_status="%(?,%{$FG[$PC_GOOD_EXIT]%}\$%{$reset_color%},%{$FG[$PC_BAD_EXIT]%}\$%{$reset_color%})"
if [ -n "$SSH_CLIENT" ]; then
  local ssh_info="%{$FG[001]%}➠ %m%{$reset_color%} "
fi

PROMPT='
%~ $(git-cwd-info.rb)
${ssh_info}${exit_status} %{$reset_color%}'
