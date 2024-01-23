# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# for ghidra
export JAVA_HOME="/opt/java/jdk-17.0.10+7"
export PATH="$PATH:$JAVA_HOME"
export PATH="$PATH:/opt/gradle/gradle-8.5/bin"
export PATH="$PATH:$HOME/Source/Ghidra/ghidra_11.0_PUBLIC"

 # Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set history file and limits
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias l="ls -lh"
 alias la="ls -alh"
 alias gccStrict="gcc -Wall -Wextra -Wpedantic"
 alias kbon="light -s sysfs/leds/kbd_backlight -S 10"
 alias kboff="light -s sysfs/leds/kbd_backlight -S 0"
 alias spot="flatpak run io.github.hrkfdn.ncspot"
 alias vim="nvim";
 alias ghidra="ghidraRun.sh"

# Zsh auto-suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^y' autosuggest-accept

# Out until I figure out submodules
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#source ~/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# p10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

#don't ask
function pomo() {
    arg1=$1
    shift
    args="$*"

    min=${arg1:?Example: pomo 15 Take a break}
    sec=$((min * 60))
    msg="${args:?Example: pomo 15 Take a break}"

    while true; do
        date '+%H:%M' && sleep "${sec:?}" && notify-send -u critical -t 5 -a pomo "${msg:?}"
    done
}
