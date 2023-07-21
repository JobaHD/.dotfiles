# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch notify
unsetopt autocd beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jovahd/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Lines for fzf commands
 export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
 export FZF_DEFAULT_COMMAND="fd --type f"
