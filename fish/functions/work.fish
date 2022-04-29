function work
    if test -n "$TMUX"
        echo "You're already in tmux. Shoo."
    else
        if not tmux has-session -t SD 2> /dev/null
            stty size | read y x
            set y (math $y - 1)

            cd ~/html/
            tmux new-session -d -x $x -y $y -s SD

            tmux split-window -v -b "tail -n 20 -F /var/log/lighttpd/error.log"
            tmux resize-pane -t 0.0 -y 13
            tmux split-window -t 0.0 -h -l 145 -c /var/log/slickdeals/worker "sudo journalctl -u worker01 -f"

            tmux new-window -c ~/html/ -t SD:1

            #tmux new-window -c ~/html/ -n cms -t SD:7
            #tmux send-keys -t SD:7.0 "ssh vagrant@cms-home.dev.sdhq.local" C-m
            #tmux split-window -v -b
            #tmux resize-pane -t 7.0 -y 13
            #tmux send-keys -t SD:7.0 "ssh vagrant@cms-home.dev.sdhq.local" C-m
            #tmux send-keys -t SD:7.0 "sudo tail -F /var/log/php-fpm/www-error.log" C-m

            tmux new-window -c ~/html/ -n sass -t SD:8
            tmux send-keys -t SD:8.0 "npx gulp watch:sass" C-m

            tmux new-window -c ~ -n deploy -t SD:9
            tmux send-keys -t SD:9.0 "ssh rm01.lv.slickdeals.net" C-m

            tmux select-window -t SD:0
            tmux select-pane -t 2
        end
        tmux -2 attach -d -t SD
    end
end

