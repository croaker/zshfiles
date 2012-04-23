#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# Emits Git metadata for use in a Zsh prompt.
#
# AUTHOR:
#    Ben Hoskings
#   https://github.com/benhoskings/dot-files/blob/master/files/bin/git_cwd_info
#
# MODIFIED:
#    Geoffrey Grosenbach http://peepcode.com

# The methods that get called more than once are memoized.

def git_repo_path
  @git_repo_path ||= `git rev-parse --git-dir 2>/dev/null`.strip
end

def in_git_repo
  !git_repo_path.empty? &&
  git_repo_path != '~' &&
  git_repo_path != "#{ENV['HOME']}/.git"
end

def git_parse_branch
  @git_parse_branch ||= `git current-branch`.chomp
end

def git_head_commit_id
  `git rev-parse --short HEAD 2>/dev/null`.strip
end

def git_cwd_dirty
  prompt = ""

  unless git_repo_path == '.'
    prompt += "%{\033[38;5;161m%}±%{\e[0m%}" unless `git ls-files -m`.strip.empty?
    prompt += "%{\033[38;5;39m%}•%{\e[0m%}" unless `git ls-files -o --exclude-standard`.strip.empty?
  end

  (prompt == "") ? prompt : " #{prompt}"
end

def rebasing_etc
  if File.exists?(File.join(git_repo_path, 'BISECT_LOG'))
    "+bisect"
  elsif File.exists?(File.join(git_repo_path, 'MERGE_HEAD'))
    "+merge"
  elsif %w[rebase rebase-apply rebase-merge ../.dotest].any? {|d| File.exists?(File.join(git_repo_path, d)) }
    "+rebase"
  end
end

if in_git_repo
  print "(%{\033[38;5;208m%}#{git_parse_branch}%{\e[0m%}#{rebasing_etc}#{git_cwd_dirty}%{\033[38;5;238m%})"
end
