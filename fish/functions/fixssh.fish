function fixssh
    if test -S "$SSH_AUTH_SOCK_OLD" -a ! -L "$SSH_AUTH_SOCK_OLD"
        ln -sf "$SSH_AUTH_SOCK_OLD" ~/.ssh/ssh_auth_sock
    end
end
