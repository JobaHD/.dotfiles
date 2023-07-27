# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jovahd/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/jovahd/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jovahd/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jovahd/.fzf/shell/key-bindings.zsh"
