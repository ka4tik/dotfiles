sudo apt-get install git
git clone https://github.com/ka4tik/dotfiles.git
sudo apt-get install vim-gnome
mv ~/.vimrc ~/.vimrc.old
mv -R ~/.vim ~/.vim.old
mv  ~/.bash_aliases ~/.bash_aliases.old
mv ~/template.cpp ~/template.cpp.old
mv ~/.tmux.conf ~/.tmux.conf.old
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/template.cpp ~/template.cpp
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
source ~/.bashrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
