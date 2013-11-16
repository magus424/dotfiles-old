function elog --description 'Tails lighttpd error log and greps for a user'
    if test -z $argv
        tail -f /var/log/lighttpd/sslerror.log | grep -A1 -B2 $USER
    else
        tail -f /var/log/lighttpd/sslerror.log | grep -A1 -B2 $argv
    end
end
