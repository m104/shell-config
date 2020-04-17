function fish_prompt --description 'Write out the prompt'
    # Based on Classic + Vcs (the default)

    set -l last_pipestatus $pipestatus
    set -l normal (set_color normal)

    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix '>'
    if contains -- $USER root toor
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end

    set -l host
    if set -q SSH_TTY
        # If we're running via SSH, change the host color
        set host (set_color $fish_color_host_remote) '@' (hostname -s)
    else
        set host (set_color $fish_color_host) '|' (hostname -s)
    end

    # Write pipestatus
    set -l prompt_status (__fish_print_pipestatus " [" "]" "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)

    #echo -n -s (set_color $fish_color_user) "$USER" (set_color $color_host) '@' (hostname -s) $normal ' ' (set_color $color_cwd) (prompt_pwd) (set_color $fish_color_vcs) (fish_vcs_prompt) $normal $prompt_status $suffix " "
    echo -n -s \
        (set_color $fish_color_user) "$USER" \
        $host \
        ' ' \
        (set_color $color_cwd) (prompt_pwd) \
        (fish_vcs_prompt) \
        $normal $prompt_status \
        $suffix " "
end
