# Command prompt

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color cyan)
  set -l yellow (set_color yellow)
  set -l magenta (set_color magenta)
  set -l brown (set_color brown)
  set -l purple (set_color purple)
  set -l red (set_color red)
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)

  if test $last_status = 0
    set arrow "$green ♪ "
  else
    set arrow "$red ♪ "
  end
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set -l git_branch (_git_branch_name)

    if [ (_is_git_dirty) ]
      set git_info "$blue git:($red$git_branch$blue)"
    else
      set git_info "$blue git:($green$git_branch$blue)"
    end
  end

  echo -n -s $cwd $git_info $normal $arrow ' '
end

function fish_right_prompt
  set_color red
  echo -n (date "+%I:%M:%S %p")
  set_color normal
end

# Greeting

function fish_greeting
  set_color cyan
  echo "__________________________________"
  set_color yellow
  echo -n "★ "
  echo -n "★ "
  echo -n "★ "
  set_color red
  echo -n " Let's Do Some Damage "
  set_color yellow
  echo -n "★ "
  echo -n "★ "
  echo "★ "
  set_color cyan
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  set_color normal
end

# Academia

set ACADEMIA_PGSQL ~/var/pgsql
set ACADEMIA_APP ~/src/academia/projects/academia-app

# rbenv

set homebrew /usr/local/bin /usr/local/sbin
set brew_rbenv "/usr/local/var/rbenv/shims"
set -gx PATH $brew_rbenv $homebrew $PATH
set -gx RBENV_ROOT /usr/local/var/rbenv
. (rbenv init -|psub)

# General

set PATH ~/bin $PATH
set PATH ./bin $PATH
set EDITOR mvim

# Rails

alias be="bundle exec"
alias rs="rails s"
alias rc="rails c"

# Docker

set DOCKER_HOST tcp://192.168.59.103:2375
alias docker="docker -H $DOCKER_HOST"

function docker_enter
  boot2docker ssh '[ -f /var/lib/boot2docker/nsenter ] || docker run --rm -v /var/lib/boot2docker/:/target jpetazzo/nsenter'
  boot2docker ssh -t sudo /var/lib/boot2docker/docker-enter "$argv"
end

# Node

set NODE_PATH /usr/local/lib/node_modules

# rlwrap for iex

function iex
  command rlwrap -s 10000 -H ./.iex-history -a foo iex $argv
end

# Eclipse/eclimd

set ECLIPSE_HOME /Applications/eclipse

function rule
  set -l _hr (printf "%*s" (tput cols))
  if test -z $argv
    printf $_hr | sed -e s/\ /\-/g
  else
    printf $_hr | sed -e s/\ /$argv/g
  end
end
