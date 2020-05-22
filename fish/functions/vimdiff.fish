function vimdiff
    if test "$vim_cmd" = "nvim"
        nvim -d $argv
    else
        command vimdiff $argv
    end
end
