

export ZSH=$HOME/.oh-my-zsh

# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history
setopt hist_reduce_blanks

eval `dircolors $HOME/.dircolors.ansi-dark`

ZSH_THEME=powerlevel9k/powerlevel9k
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( status background_jobs command_execution_time time )
POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( root_indicator dir nvm vcs )

plugins=(
  git-extras
  sudo
)
source $ZSH/oh-my-zsh.sh

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

alias ll='ls -al'
