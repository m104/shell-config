# JDK support
#
# export JDK_PATH to enable
#
if test -n "$JDK_PATH" -a -d "$JDK_PATH"; then
  export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV JAVA_HOME"
  export JAVA_HOME="$JDK_PATH"
fi
unset JDK_PATH
