if test $TERM = 'screen' -o $TERM = 'screen-bce'
    set -x TERM screen-256color
else
    set -x TERM xterm-256color
end

if type -f dircolors > /dev/null
    eval (dircolors -c | sed 's/>&\/dev\/null$//')
end

set -x fish_color_command blue --bold
set -x fish_color_end green
set -x fish_color_escape cyan
set -x fish_color_operator cyan

set -x XDG_CONFIG_HOME ~/.config
set -x POWERLINE_COMMAND ~/.config/vim/bundle/powerline/scripts/powerline-render
set -x WHOIS_HIDE 1
set -x EDITOR vim
set -x GTAGSDBPATH ~/html/.git/gtags/
set -x GTAGSROOT ~/html/
set -e GREP_OPTIONS
set -x GREP_COLOR "1;33"
set -x ACK_COLOR_MATCH "bold yellow"
set -x PAGER vimpager
set -x GIT_PAGER less

if type -q thefuck
    thefuck --alias | source
end

# if test -d /usr/local/rvm/rubies/ruby-2.1.2/lib
#     set -x LD_LIBRARY_PATH /usr/local/rvm/rubies/ruby-2.1.2/lib
# end
#
# if test -d ~/.rvm/rubies/default/lib
#     set -x LD_LIBRARY_PATH ~/.rvm/rubies/default/lib
# end

for p in /home/vagrant/.local/lib ~/.local/lib64 /usr/local/rvm/rubies/ruby-2.1.2/lib ~/.rvm/rubies/default/lib
    if test -d $p
        if not contains $p $LD_LIBRARY_PATH
            set -x LD_LIBRARY_PATH "$p:$LD_LIBRARY_PATH"
        end
    end
end

for p in ~/.config/vim/bundle/powerline/ ~/src/django-1.6.5
    if test -d $p
        if not contains $p $PYTHONPATH
            set PYTHONPATH $p $PYTHONPATH
        end
    end
end

for p in /opt/nodejs/bin ~/bin ~/.local/bin
    if test -d $p
        if not contains $p $PATH
            set PATH $p $PATH
        end
    end
end

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
