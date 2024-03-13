export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"

# ----------------------------------
# OHMYZSH PREFERENCES
# ----------------------------------
DISABLE_MAGIC_FUNCTIONS=true
DISABLE_LS_COLORS=true
ENABLE_CORRECTION=true
COMPLETION_WAITING_DOTS=true

# ----------------------------------
# OHMYZSH PLUGINS
# ----------------------------------
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  dirhistory
  copyfile
)

# ----------------------------------
# COMMAND FLAGS
# ----------------------------------
alias grep="grep --color=auto"
alias ls="ls -aF"
alias mkdir="mkdir -p"

# ----------------------------------
# FUNCTIONS
# ----------------------------------
function desktop {
  cd ~/Desktop
}

function downloads {
  cd ~/Downloads
}

function ~ {
  cd ~
}

function .. {
  cd ..
}

function ... {
  cd ../..
}

function - {
  cd -
}

function c {
  # [c]lear
  clear
}

function h {
  # [h]istory
  history
}

function hc {
  # [h]istory [c]lear
  alias hc="history -c" 
}

function ka {
  # [k]ill [a]ll
  kill -9 $(ps wuax | awk 'NR>1 && $8 ~ "T" {print $2}')
}

# ----------------------------------
# TMUX FUNCTIONS
# ----------------------------------
function tl {
  # [t]mux [l]s
  tmux ls
}

function tn {
  # [t]mux [n]ew
  if [ -z "$1" ]; then
    tmux new
  else
    tmux new -s "$1"
  fi
}

function ta {
  # [t]mux [a]ttach
  if [ -z "$1" ]; then
    tmux attach
  else
    tmux attach -t "$1"
  fi
}

function tk {
  # [t]mux [k]ill
  pkill -f tmux
}

# ----------------------------------
# GIT CONFIG
# ----------------------------------
git config --global color.ui auto

# ----------------------------------
# GIT FUNCTIONS
# ----------------------------------
function gi {
  # [g]it [i]nit
  git init
}

function gl {
  # [g]it [l]og
  git log
}

function ga {
  # [g]it [a]dd
  git add .
}

function gc {
  # [g]it [c]ommit
  git commit -m $1
}

function gca {
  # [g]it [c]ommit [a]mend
  git commit --amend
}

function gstat {
  # [g]it [stat]us
  git status
}

function gd {
  # [g]it [d]iff
  git diff
}

function gds {
  # [g]it [d]iff [s]taged
  git diff --staged
}

function gb {
  # [g]it [b]ranch
  git branch
}

function gch {
  # [g]it [ch]eckout
  git checkout
}

function gbn {
  # [g]it [b]ranch [n]ew
  git branch "$1"
}

function gs {
  # [g]it [s]tash
  git stash
}

function gcl {
  # [g]it [cl]one
  git clone "$1"
}

function gpull {
  # [g]it [pull]
  git pull
}

function gpush {
  # [g]it [push]
  git push
}

function gm {
  # [g]it [m]erge
  if [ $# -lt 2]; then
    git merge "$1"
  else
    git merge "$1" -m "$2"
  fi
}

source $ZSH/oh-my-zsh.sh
