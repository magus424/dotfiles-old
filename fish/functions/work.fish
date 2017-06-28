function work
    if test -n "$TMUX"
        echo "You're already in tmux. Shoo."
    else
        if not tmux has-session -t SD 2> /dev/null
            cd ~/html/slickdeals/
            tmux new-session -d -s SD
            tmux rename-window -t SD:0 vim
            tmux send-keys -t SD:0 'vim' C-m

            tmux new-window -c ~/html/slickdeals/ -t SD:1

            tmux new-window -c ~/html/slickdeals/css/306/sass/modern/ -n sass -t SD:8
            tmux send-keys -t SD:8.0 'compass watch --poll' C-m
            tmux split-window -c ~/html/slickdeals/css/306/sass/newmobile3/ -t SD:8 -h
            tmux send-keys -t SD:8.1 'compass watch --poll' C-m
            tmux split-window -c ~/html/slickdeals/css/306/sass/sem/ -t SD:8.0 -v
            tmux send-keys -t SD:8.2 'compass watch --poll' C-m
            tmux split-window -c ~/html/slickdeals/css/306/sass/blackfriday/ -t SD:8.1 -v
            tmux send-keys -t SD:8.3 'compass watch --poll' C-m
            tmux select-pane -t SD:8.0

            tmux new-window -c ~ -n deploy -t SD:9
            tmux send-keys -t SD:9.0 'ssh rm01.lv.slickdeals.net' C-m

            tmux new-window -c ~/html/slickdeals/sdincludes/util/ -n js -t SD:10

            tmux select-window -t SD:0
        end
        tmux -2 attach -d -t SD
    end
end

