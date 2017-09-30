#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git config --global user.name "Amir Yahyavi" && \
git config --global user.email "yahyavi@gmail.com" && \
git config --global github.user yahyavi && \
git config --global core.editor "subl -w" && \
git config --global color.ui true && \
git config --global push.default simple

git clone git@github.com:powerline/fonts.git fonts
./fonts/install.sh

git pull origin master;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;


curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git clone git://github.com/zsh-users/zsh-syntax-highlighting.git \
~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp ./init/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme
