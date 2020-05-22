set -l bin_paths \
    $HOME/.shell/bin \
    $HOME/bin

for path in $bin_paths
    if test -d $path
        echo "[debug] Adding dir to PATH: '$path'"
        set -x -p PATH $path
    end
end

