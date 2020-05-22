function view
    if test "$vim_cmd" = "nvim"
        nvim -R $argv
    else
        command view $argv
    end
end
