function vim
    if test "$vim_cmd" = "nvim"
        nvim $argv
    else
        command vim $argv
    end
end
