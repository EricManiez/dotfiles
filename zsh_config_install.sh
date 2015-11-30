cd ~
mkdir -p .zsh_save
mv -v .zshrc .zsh_save/.zshrc
mv -v .zsh .zsh_save/.zsh
mv -v .gitconfig .zsh_save/.gitconfig
ln -s zsh_config/.zsh .zsh
ln -s zsh_config/.zshrc .zshrc
ln -s zsh_config/.gitconfig .gitconfig
echo "Installation succesful!"
