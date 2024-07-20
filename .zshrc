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
alias hc="history -p"
alias applications="cd ~/Applications"
alias desktop="cd ~/Desktop"
alias documents="cd ~/Documents"
alias downloads="cd ~/Downloads"
alias library="cd ~/Library"
alias movies="cd ~/Movies"
alias music="cd ~/Music"
alias pictures="cd ~/Pictures"
alias public="cd ~/Public"

# ----------------------------------
# FUNCTIONS
# ----------------------------------
function b {
  cd - > /dev/null;
}

function mk {
  mkdir -p $1
}

function rmrf {
  rm -rf $1
}
