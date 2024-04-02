VIM="nvim"
#source /usr/share/fzf/shell/key-bindings.zsh

#export JAVA_HOME="/opt/java/jdk-17.0.10+7"
export GIT_EDITOR=$VIM
export DOTFILES="$HOME/.dotfiles"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/bin/scripts:$PATH"
#export PATH="$CHROMEDRIVER:$PATH"

 alias l="ls -lhG"
 alias la="ls -alhG"
 alias vim="nvim"
 alias rg="rg --pretty"
 alias gccStrict="gcc -Wall -Wextra -Wpedantic"
 alias kbon="light -s sysfs/leds/kbd_backlight -S 10"
 alias kboff="light -s sysfs/leds/kbd_backlight -S 0"
 alias spot="flatpak run io.github.hrkfdn.ncspot"
 alias ip="ip -c=auto"
 # dont ask (this should be an actual script
 alias ip="ip -c=auto"

 # Star sway compositor
# if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#   exec Hyprland
# fi

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
# if [ "$(arch)" = "arm64" ]; then
#     eval "$(/opt/homebrew/bin/brew shellenv)"
# else
#     eval "$(/usr/local/bin/brew shellenv)"
# fi
