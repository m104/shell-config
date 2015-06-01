# JDK support
#
# export JDK_PATH to enable
#
if test -n "$JDK_PATH" -a -d "$JDK_PATH"; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS JAVA_HOME"
  export JAVA_HOME="$JDK_PATH"
fi
unset JDK_PATH
