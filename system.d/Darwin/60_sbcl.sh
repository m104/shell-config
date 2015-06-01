slimvpath="$HOME/.vim/bundle/slimv.vim/slime"
if test -d "$slimvpath" && which -s sbcl; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS swank_sbcl"
  export SLIMV_PATH="$slimvpath"

  function swank_sbcl () {
    sbcl --load "$SLIMV_PATH/start-swank.lisp"
  }
fi
unset slimvpath
