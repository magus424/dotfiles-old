if [ "$PS1" ]; then
    stty -ixon
    if [[ -n $(which fish) ]]; then
        exec fish
    fi
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
