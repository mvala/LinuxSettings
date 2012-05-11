
# added CDPATH
export CDPATH=".:~:~/git"

# adds $HOME/bin to PATH
export PATH="$PATH:$HOME/bin"

if [ -f $HOME/.git-prompt.sh ];then
  . $HOME/.git-prompt.sh
fi
