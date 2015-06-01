if test -n "$JULIA4_PATH" -a -x "$JULIA4_PATH"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS julia4"
  eval "function julia4() { $JULIA4_PATH/julia \$@; }"
  eval "function julia4-debug() { $JULIA4_PATH/julia-debug \$@; }"
fi
unset JULIA4_PATH
