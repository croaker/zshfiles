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

# Prompt
local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='
%~
${smiley}  %{$reset_color%}'

RPROMPT='%{$fg[white]%} $(rbenv version-name)$(~/bin/git-cwd-info.rb)%{$reset_color%}'

# Load all config files
for config_file (~/.zshfiles/lib/*.zsh) source $config_file

# Load bundles
for zsh_file (~/.zshfiles/bundle/**/*.zsh) source $zsh_file

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

