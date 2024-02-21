VIM="nvim"
export XDG_CURRENT_DESKTOP="KDE"
export QT_QPA_PLATFORMTHEME="kde"

# source /usr/share/fzf/shell/key-bindings.zsh

export JAVA_HOME="/opt/java/jdk-17.0.10+7"
export GIT_EDITOR=$VIM
export DOTFILES="$HOME/.dotfiles"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/scripts:$PATH"

 alias l="ls -lh"
 alias la="ls -alh"
 alias gccStrict="gcc -Wall -Wextra -Wpedantic"
 alias kbon="light -s sysfs/leds/kbd_backlight -S 10"
 alias kboff="light -s sysfs/leds/kbd_backlight -S 0"
 alias spot="flatpak run io.github.hrkfdn.ncspot"
 alias ip="ip -c=auto"

 # Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"

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

# change brew based on console arch.
if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi
