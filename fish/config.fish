if test $TERM = 'screen' -o $TERM = 'screen-bce'
    set -x TERM screen-256color
else
    set -x TERM xterm-256color
end

if type -f dircolors > /dev/null
    eval (dircolors -c | sed 's/>&\/dev\/null$//')
end

set -x XDG_CONFIG_HOME ~/.config

set -x POWERLINE_COMMAND ~/.config/vim/bundle/powerline/scripts/powerline-render
set -x PYTHONPATH ~/.config/vim/bundle/powerline/ ~/src/django-1.6.5
~/.config/vim/bundle/powerline/scripts/powerline-daemon -q -p ~/.config/powerline

set -x WHOIS_HIDE 1
set EDITOR vim
for p in /opt/nodejs/bin ~/gocode/bin ~/bin
    if not contains $p $PATH
        set PATH $p $PATH
    end
end

set -x GOPATH ~/gocode/

set -x GTAGSDBPATH ~/html/.git/gtags/
set -x GTAGSROOT ~/html/

set -e GREP_OPTIONS
set -x GREP_COLOR "1;33"
set -x ACK_COLOR_MATCH "bold yellow"

set -x PAGER vimpager
set -x GIT_PAGER less

complete -f -c git -n '__fish_git_needs_command' -a get -d 'Checkout and switch to a branch'
complete -f -c git -n '__fish_git_using_command get' -a '(__fish_git_branches)' --description 'Branch'
complete -f -c git -n '__fish_git_needs_command' -a delbr -d 'Delete a branch from both local and remote repos'
complete -f -c git -n '__fish_git_using_command delbr' -a '(__fish_git_branches)' --description 'Branch'

#if test -z "$TMUX"
#    set -l TMUX_SESSIONS (tmux list-sessions)
#    if test $status = 0
#        tmux -2 a
#    else
#        tmux
#    end
#end
