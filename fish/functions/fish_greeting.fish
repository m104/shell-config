function fish_greeting
    set_color FA7
    which -s fortune; and fortune; or echo "<fortune goes here>"
    set_color normal
    echo
end
