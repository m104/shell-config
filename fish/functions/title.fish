function title
    if test -n "$argv"
        set -g __fish_title $argv
    else
        set -e __fish_title
    end
end
