function fish_prompt --description 'Write out the prompt'
    echo

    # User
    # set_color $fish_color_user
    # echo -n (whoami)
    # set_color normal
    # echo -n '@'

    # Host
    set_color 0BB
    echo -n (hostname -s)
    set_color 555

    echo -n ':'

    # PWD
    set_color 55F
    echo -n (prompt_pwd)

    set -l git_branch (git rev-parse --abbrev-ref HEAD ^ /dev/null)

    if not test -z $git_branch
        set_color 555
        echo -n ' ('
        set_color 0B0
        echo -n $git_branch
        set_color 555
        echo -n ')'
    end
    echo

    set_color normal
    echo -n '$ '
end
