# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Sets default editor
export EDITOR="vim"

# Added CDPATH
export CDPATH=".:~:~/git"

# Adds $HOME/bin to PATH
export PATH="$HOME/bin:$PATH"

# Alias
alias df='df -h'
alias du='du -h'
alias ls="ls -h --color"
alias l='ls'
alias la='ls -alh'
alias root='root -l'
alias github-fork-sync='git fetch upstream && git merge upstream/$(git rev-parse --abbrev-ref HEAD) && git push'

# Alias SIVVP
alias mgmt1="ssh root@172.29.102.11"

# Alias EOS
alias eos-saske="export EOS_MGM_URL=\"root://alieos.saske.sk\""
alias eos-hybrilit="export EOS_MGM_URL=\"root://eos-hlit.jinr.ru\" && export EOS_HOME=\"/eos/hybrilit.jinr.ru/users/${USER:0:1}/$USER\""
alias eos-ithemba="export EOS_MGM_URL=\"root://eos1.alice.tlabs.ac.za\" && export EOS_HOME=\"/eos/alice.tlabs.ac.za/users/${USER:0:1}/$USER\""

