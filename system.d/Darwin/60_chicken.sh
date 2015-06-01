# homebrew required
which -s brew || return

chicken_prefix_path=`brew --prefix chicken 2> /dev/null`
if test -d "$chicken_prefix_path" && which -s csi; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_TOOLS chicken"
  binpath="$chicken_prefix_path/bin"
  export PATH="$PATH:$binpath"
  unset binpath

  swankpath="$HOME/.vim/bundle/swank-chicken"
  if test -d "$swankpath"; then
    export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS swank_chicken"
    export SWANK_CHICKEN_PATH="$swankpath"

    function swank_chicken () {
      echo '(let loop () (swank-server-start) (loop))' | csi "$SWANK_CHICKEN_PATH/swank-chicken.scm"
    }
  fi
  unset swankpath
fi
unset chicken_prefix_path
