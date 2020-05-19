function fish_title
    # emacs is basically the only term that can't handle it.
    if not set -q INSIDE_EMACS
        if set -q __fish_title
            echo $__fish_title
        else
            echo (status current-command) (__fish_pwd)
        end
    end
end
