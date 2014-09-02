sudo apt-get install git
git clone https://github.com/ka4tik/dotfiles.git
sudo apt-get install vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/template.cpp ~/template.cpp
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
source ~/.bashrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
