export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode auto
ZSH_THEME="af-magic"

# ----------------------------------
# OHMYZSH SETTINGS
# ----------------------------------
DISABLE_MAGIC_FUNCTIONS=true
DISABLE_LS_COLORS=true
ENABLE_CORRECTION=true
COMPLETION_WAITING_DOTS=true

# ----------------------------------
# OHMYZSH PLUGINS
# ----------------------------------
plugins=(
  copyfile
  dirhistory
  encode64
  git
  git-lfs
  jsontools
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ------------------------------------------------------------------------------
# LOCAL
# ------------------------------------------------------------------------------

# ----------------------------------
# COMMAND ALIASES
# ----------------------------------
alias ls="ls -F"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias bc="bc -l"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias c="clear"
alias h="history"
alias hc="rm ~/.zsh_history"
alias caf="caffeinate"
alias applications="cd ~/Applications"
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias downloads="cd ~/Downloads"
alias library="cd ~/Library"
alias movies="cd ~/Movies"
alias music="cd ~/Music"
alias pictures="cd ~/Pictures"
alias public="cd ~/Public"
alias mkdir="mkdir -p"
alias encode="encode64"
alias encodefile="encodefile64"
alias decode="decode64"

# ----------------------------------
# FUNCTIONS
# ----------------------------------
function b {
  cd - > /dev/null;
}

function docker {
  if [[ $1 == "compose" && $2 == "clean" ]]; then
    docker system prune -a --volumes
  else
    command docker "$@"
  fi
}

function hf {
  command huggingface-cli "$@"
}

# ------------------------------------------------------------------------------
# PITTSBURGH SUPERCOMPUTER (PSC)
# ------------------------------------------------------------------------------

# ----------------------------------
# VARIABLES
# ----------------------------------
export PSC_USERNAME="lue"

# ----------------------------------
# COMMAND ALIASES
# ----------------------------------
alias p="projects"
alias group="change_primary_group -l"
alias jobs="squeue -u $PSC_USERNAME"

# ----------------------------------
# FUNCTIONS
# ----------------------------------
function cancel {
  command scancel "$@"
}

source $ZSH/oh-my-zsh.sh
