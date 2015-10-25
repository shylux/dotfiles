
# aliases

alias l='ls -ahl --color=auto'
alias gs='git status'


# config
source /etc/zsh/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '

export EDITOR=vim

HISTFILE=~/.zsh_history
HISTSIZE=100
SAVEHIST=100
