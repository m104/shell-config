if test -n "$GOPATH"
    echo "[debug] Detected GOPATH: $GOPATH"
    set -l path $GOPATH/bin
    if test -d $path
        echo "[debug] Adding dir to PATH: '$path'"
        set -x -p PATH $path
    end
end

