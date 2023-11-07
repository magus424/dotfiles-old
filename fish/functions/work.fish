function work
    if test -n "$TMUX"
        echo "You're already in tmux. Shoo."
    else
        if not tmux has-session -t SD 2> /dev/null
            stty size | read y x
            set y (math $y - 1)

            cd ~/src/html/
            tmux new-session -d -x $x -y $y -s SD

            tmux split-window -v
            tmux send-keys -t SD:0.0 "docker compose logs -f --no-log-prefix lighttpd" C-m
            tmux resize-pane -t 0.0 -y 13
            tmux split-window -t 0.0 -h -l 80
            tmux send-keys -t SD:0.1 "docker compose exec consumer tail -F /var/log/consumer.log" C-m

            tmux new-window -c ~/src/vuerango/ -t SD:1

            tmux new-window -c ~/src/html/ -n sass -t SD:8
            tmux send-keys -t SD:8.0 "docker compose exec devtools npx gulp watch:sass" C-m

            tmux new-window -c ~/src/html/ -n deploy -t SD:9
            tmux send-keys -t SD:9.0 "ssh rm01.lv.slickdeals.net"

            tmux select-window -t SD:0
            tmux select-pane -t 2
        end
        tmux -2 attach -d -t SD
    end
end

