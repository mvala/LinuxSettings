
# added CDPATH
export CDPATH=".:~:~/git"

# adds $HOME/bin to PATH
export PATH="$PATH:$HOME/bin"

if [ -f $HOME/.git-prompt.sh ];then
  . $HOME/.git-prompt.sh
fi

export EDITOR="nano -w"

# Aliases
alias df='df -h'
alias du='du -h'
alias ls="ls -h --color"
alias l='ls'
alias la='ls -alh'
alias root='root -l'

if [ -f /usr/bin/emacs ];then
# emacs
    pkill -0 emacs || emacs --daemon > /dev/null 2>&1
    alias emacs="emacsclient -t"
    export EDITOR="emacsclient"
fi
