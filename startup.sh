source ${HOME}/scripts/git-completion.bash
source ${HOME}/scripts/git-prompt.bash
source ${HOME}/scripts/git-aware-prompt/main.sh
export GITAWAREPROMPT=${HOME}/scripts/git-aware-prompt
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\w" "\\\$ "'