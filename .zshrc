# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"

## Spaceship Options
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=∞
SPACESHIP_CHAR_SUFFIX=" "

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  poetry
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias cra="create-react-app"
alias gs="git status"
alias gaa="git add ."
alias gcm="git commit -m"
alias ls="exa --long --header --modified --git --color=always"
alias vim="nvim"

export PATH="$HOME/.poetry/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source /Users/rohan/Library/Preferences/org.dystroy.broot/launcher/bash/br

# Adding Helldiver to PATH
export PATH="/usr/local/lib/python3.7/site-packages/helldiver:$PATH"

# Add kernprof to PATH
export PATH="/Users/rohan/Library/Python/3.7/bin:$PATH"
