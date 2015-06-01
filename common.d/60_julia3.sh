if test -n "$JULIA3_PATH" -a -x "$JULIA3_PATH"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS julia3"
  function julia3() {
    "$JULIA3_PATH" $@
  }
fi
unset JULIA3_PATH
