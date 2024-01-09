# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH=$HOME/bin:/usr/local/bin:$PATH

# For openjdk and java
export PATH="$PATH:/opt/homebrew/opt/openjdk@21/bin"

# For python environments (anaconda)
#export PATH="$PATH:$HOME/miniconda3/bin:$PATH"  # commented out by conda initialize
#export PATH="$PATH:$HOME/bin:$PATH"  # commented out by conda initialize

# For setting up ruby version
#export PATH="$HOME/.rbenv/bin:$PATH"
#export PATH="$PATH:/usr/bin/java"
#eval "$(rbenv init -)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Set history file and limits
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
 export ARCHFLAGS="-arch aarch64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Get personal config
source ~/.zprofile

# Example aliases
 alias ls="ls -G"
 alias l="ls -lh"
 alias la="ls -alh"
 alias gccStrict="gcc -Wall -Wextra -Wpedantic"
 alias vim="nvim";

# Zsh auto-suggestions
#source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#bindkey '^y' autosuggest-accept

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/.zprofile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $(brew --prefix nvm)/nvm.sh

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jrod/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jrod/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jrod/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jrod/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
