function work
    if test -n "$TMUX"
        echo "You're already in tmux. Shoo."
    else
        if not tmux has-session -t SD 2> /dev/null
            cd ~/html/slickdeals/
            tmux new-session -d -s SD

            tmux split-window -v -b "tail -n 20 -F /var/log/lighttpd/error.log"
            tmux resize-pane -t 0.1 -y 13
            tmux split-window -t 0.1 -h -l 95 -c /var/log/slickdeals/worker "tail -F current"

            tmux new-window -c ~/html/slickdeals/ -t SD:1

            tmux new-window -c ~/html/ -n cms -t SD:7
            tmux send-keys -t SD:7.0 "ssh vagrant@cms-collin.dev.sdhq.local" C-m
            tmux split-window -v -b
            tmux resize-pane -t 7.1 -y 13
            tmux send-keys -t SD:7.1 "ssh vagrant@cms-collin.dev.sdhq.local" C-m
            tmux send-keys -t SD:7.1 "sudo tail -F /var/log/php-fpm/www-error.log" C-m

            tmux new-window -c ~/html/ -n sass -t SD:8
            tmux send-keys -t SD:8.0 "./node_modules/.bin/gulp watch:sass" C-m

            tmux new-window -c ~ -n deploy -t SD:9
            tmux send-keys -t SD:9.0 "ssh rm01.lv.slickdeals.net" C-m

            tmux select-window -t SD:0
            tmux select-pane -t 0
        end
        tmux -2 attach -d -t SD
    end
end

