set -l path /Applications/Xcode.app/Contents/Developer/Tools

if test -d $path
    echo "[debug] Adding Xcode tools dir to PATH: '$path'"
    set -x -p PATH $path
end
