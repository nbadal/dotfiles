#!/usr/bin/env bash

echo "Downloading initial updates..."
sudo apt update
sudo apt upgrade

echo "Setting up symlinks..."
ln -sf ~/dotfiles/.vimrc ~/.vimrc

echo "Setting up ZSH..."
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf ~/dotfiles/zsh/nbadal.zsh-theme ~/.oh-my-zsh/custom/themes/
ln -sf ~/dotfiles/zsh/.zshrc ~/.zshrc
sudo chsh -s /usr/bin/zsh `whoami`

echo "Setting up Git..."
sudo apt install git
ln -sf ~/dotfiles/git/.gitignore-global ~/.gitignore-global
git config --global core.excludesfile ~/.gitignore-global

echo "Installing VSCode..."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code
rm packages.microsoft.gpg

echo "Setting password..."
sudo passwd `whoami`
