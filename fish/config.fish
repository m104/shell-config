echo "[debug] Starting config.fish"

set -l load_dirs \
    0_local \
    1_core \
    2_system/(uname -s) \
    3_common

for dir in $load_dirs
    for script in $__fish_config_dir/$dir/*.fish
        if test -r $script
            set -l script_name (basename $script)
            echo "[debug] Loading $dir script: $script_name"
            source $script
        end
    end
end

echo "[debug] Finished config.fish"
