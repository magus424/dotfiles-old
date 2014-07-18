if [ "$PS1" ]; then
    stty -ixon
    exec fish
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
