# Dotfiles

## How it works

Symlinks various configuration files from a path on my local computer to a path
here in the `dotfiles` directory.

```
| computer path                     | dotfiles path           |
| --------------------------------- | ----------------------- |
| ~/.config/nvim/init.vim           | nvim/init.vim           |
| ~/.config/nvim/coc-settings.json  | nvim/coc-settings.json  |
| ~/.hammerspoon/init.lua           | hammerspoon/init.lua    |
| ~/.tmux.conf                      | .tmux.conf              |
| ~/.vimrc                          | .vimrc                  |
| ~/.zshrc                          | .zshrc                  |
```

The following commands can be used to re-create the symlinks if need be:

```
ln -s ~/projects/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/projects/dotfiles/nvim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s ~/projects/dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -s ~/projects/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/projects/dotfiles/.vimrc ~/.vimrc
ln -s ~/projects/dotfiles/.zshrc ~/.zshrc
```

## New computer?

A non-exhaustive list of things you probably will need to install:

0. Ghostty
1. XCode dev tools
2. Brew
3. Oh My Zsh
4. Oh My Zsh theme
5. fzf
6. NeoVim (nvim)
7. Vim Plug

