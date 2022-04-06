if ! [ -x "$(command -v brew)" ]; then
  echo 'Homebrew is not installed. Installing . . .' >&2
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/dotfiles/vimrc.symlink ~/.vimrc
vim +PluginInstall +qall

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

ln -s ~/dotfiles/zshrc.symlink ~/.zshrc
exec zsh

