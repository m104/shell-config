# julia 0.3.x
#
# export JULIA3_PATH to enable
#
if test -n "$JULIA3_PATH" -a -x "$JULIA3_PATH"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS julia3"
  eval "function julia3() { $JULIA3_PATH/julia \$@; }"
  eval "function julia3-debug() { $JULIA3_PATH/julia-debug \$@; }"
fi
unset JULIA3_PATH
