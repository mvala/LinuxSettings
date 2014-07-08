# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Sets default editor
export EDITOR="nano -w"

# Added CDPATH
export CDPATH=".:~:~/git"

# Adds $HOME/bin to PATH
export PATH="$PATH:$HOME/bin"
export LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

source /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \W\[\033[01;33m\]\$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] "

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true


# Alias
alias df='df -h'
alias du='du -h'
alias ls="ls -h --color"
alias l='ls'
alias la='ls -alh'
alias root='root -l'
alias eos='LD_LIBRARY_PATH= eos'
alias github-fork-sync="git fetch upstream && git merge upstream/master && git push"

# Alias SIVVP
alias mgmt1="ssh -f -L 8081:172.29.102.11:80 mvala@lx000.saske.sk -N"
alias mgmt2="ssh -f -L 8082:172.29.102.12:80 mvala@lx000.saske.sk -N"
alias sivvp_nagios="ssh -f -L 8080:172.20.102.11:80 -N lx000.saske.sk"

# Alias EOS
alias eos-saske="export EOS_MGM_URL=\"root://eos.saske.sk\" && export EOS_HOME=\"/eos/saske.sk/users/${USER:0:1}/$USER\""
alias eos-jinr="export EOS_MGM_URL=\"root://hydra.jinr.ru\" && export EOS_HOME=\"/eos/jinr.ru/users/${USER:0:1}/$USER\""
alias eos-mount="eos fuse mount /eos"
alias eos-umount="eos fuse umount /eos"

# Alias HYDRA
alias blade01="ssh -f -L 8081:192.168.36.231:80 mvala@hydra.jinr.ru -N"

eos-saske
