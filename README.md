# Install(MacOS)

## Dependencies

```brew
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
brew install gotags fzf fd ripgrep ctags neovim

```

Change your terminal font to the hacked font

## Plug manager for vim

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

```

## Vim commands

```vim
:PlugInstall
:CocInstall coc-go coc-css coc-html coc-tsserver coc-json coc-markdownlint

```

