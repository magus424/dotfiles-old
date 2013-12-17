if test $TERM = 'screen' -o $TERM = 'screen-bce'
    set -x TERM screen-256color
end

if test -S $SSH_AUTH_SOCK -a ! -L $SSH_AUTH_SOCK
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
end
set -x SSH_AUTH_SOCK ~/.ssh/ssh_auth_sock

if type -f dircolors > /dev/null
    eval (dircolors -c | sed 's/>&\/dev\/null$//')
end

set -x WHOIS_HIDE 1
set EDITOR vim
set PATH ~/bin $PATH

set -e GREP_OPTIONS
set -x GREP_COLOR "1;33"
set -x ACK_COLOR_MATCH "bold yellow"

set -x PAGER vimpager
set -x GIT_PAGER less

complete -f -c git -n '__fish_git_needs_command' -a get -d 'Checkout and switch to a branch'
complete -f -c git -n '__fish_git_using_command get' -a '(__fish_git_branches)' --description 'Branch'
complete -f -c git -n '__fish_git_needs_command' -a delbr -d 'Delete a branch from both local and remote repos'
complete -f -c git -n '__fish_git_using_command delbr' -a '(__fish_git_branches)' --description 'Branch'
