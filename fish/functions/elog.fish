function elog --description 'Tails lighttpd error log and greps for a user'
    if test -z $argv
        tail -n 20 -F /var/log/lighttpd/error.log
    else
        tail -n 20 -F /var/log/lighttpd/error.log | grep -A1 -B2 $argv
    end
end
