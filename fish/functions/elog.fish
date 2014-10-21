function elog --description 'Tails lighttpd error log and greps for a user'
    if test -z $argv
        tail -n 20 -f /var/log/lighttpd/sslerror.log | grep -A1 -B2 $USER
    else
        tail -n 20 -f /var/log/lighttpd/sslerror.log | grep -A1 -B2 $argv
    end
end
