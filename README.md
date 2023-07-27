# .dotfiles

### Steps

1. Install curl and stow

2. Install zsh, do not create .zshrc

3. Install oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

4. Install fzf

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

7. Move .fzf .fzf.bash .fzf.zsh to .dotfiles

8. Swap caps lock and escape

localectl --no-convert set-x11-keymap us kinesis "" "caps:swapescape"
