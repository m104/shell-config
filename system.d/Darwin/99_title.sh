# iTerm tab title support
#
# must have $TERM_PROGRAM set to "iTerm.app"
#

if [ "$TERM_PROGRAM" == "iTerm.app" ]; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS title"
  function title {
    echo -ne "\033]0;"$*"\007"
  }
fi
