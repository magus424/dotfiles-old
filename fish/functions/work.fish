function work
    if test -n "$TMUX"
        echo "You're already in tmux. Shoo."
    else
        if not tmux has-session -t SD 2> /dev/null
            cd ~/html/slickdeals/
            tmux new-session -d -s SD
            tmux rename-window -t SD:0 vim
            tmux send-keys -t SD:0 'vim -S ~/.vim/sessions/general' C-m

            tmux new-window -c ~/html/slickdeals/ -t SD:1

            tmux new-window -c ~/html/slickdeals/css/306/sass/modern/ -n sass -t SD:7
            tmux send-keys -t SD:7.0 'compass watch --poll' C-m
            tmux split-window -c ~/html/slickdeals/css/306/sass/newmobile3/ -t SD:7 -h -l 50
            tmux send-keys -t SD:7.1 'compass watch --poll' C-m
            tmux select-pane -t SD:7.0

            tmux new-window -c ~ -n vem1-git -t SD:8
            tmux send-keys -t SD:8 'ssh vem1' C-m

            tmux new-window -c ~ -n vem1-sync -t SD:9
            tmux send-keys -t SD:9 'ssh vem1' C-m

            tmux select-window -t SD:0
        end
        tmux -2 attach -d -t SD
    end
end

