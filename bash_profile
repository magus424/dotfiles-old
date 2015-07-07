if [ "$PS1" ]; then
    stty -ixon
    if [ -f ~/bin/rvm.sh -a -z "$rvm_bin_path" ]; then
        source ~/bin/rvm.sh
    fi

    if [[ -n $(which fish 2> /dev/null) ]]; then
        # exec fish
        echo
    fi
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# vim: ts=4 sts=4 sw=4 et ai nowrap ft=sh
