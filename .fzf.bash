# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jova/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/jova/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jova/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jova/.fzf/shell/key-bindings.bash"
