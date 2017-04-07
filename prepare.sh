#!/usr/bin/env bash

mkdir -p ~/scripts/
git clone git://github.com/jimeh/git-aware-prompt.git ~/scripts/git-aware-prompt

pip install icdiff

cp ./.gitconfig ~/
cp ./.gitignore_global ~/
cp ./.tmux.conf ~/

cp ./git-completion.bash ~/scripts/
cp ./git-prompt.bash ~/scripts/

echo $(cat startup.sh) > ~/.bashrc