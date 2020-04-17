function fish_greeting
    set_color $__fish_fortune_color
    which -s fortune; and fortune; or echo "<fortune goes here>"
    set_color normal
    echo
end
