#!/usr/bin/env bash

mkdir -p ~/scripts/
git clone git://github.com/jimeh/git-aware-prompt.git ~/scripts/git-aware-prompt

pip install icdiff

cp ./.gitconfig ~/
cp ./.gitignore_global ~/
cp ./.tmux.conf ~/

cp ./git-completion.bash ~/scripts/


echo "source ${HOME}/scripts/git-completion.bash" >> ~/.bash_profile
echo "export GITAWAREPROMPT=${HOME}/scripts/git-aware-prompt" >> ~/.bash_profile
echo "source ${HOME}/scripts/git-aware-prompt/main.sh"  >> ~/.bash_profile
