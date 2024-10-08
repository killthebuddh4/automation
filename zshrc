##################################################################
#
# FZF
#
###################################################################

source <(fzf --zsh)

##################################################################
#
# NVM
#
###################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##################################################################
#
# AUTOMATION
#
###################################################################

export AUTOMATION_DIR="$HOME/projects/automation"
export PATH="${PATH}:${AUTOMATION_DIR}/bin"

alias nb="notebook.sh"
alias reload="source ~/.zshrc"