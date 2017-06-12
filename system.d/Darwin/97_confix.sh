# User confix support for git conflict resolution
#
# must have mvim in PATH to enable
#
# TODO use $VISUAL or $EDITOR
if which mvim > /dev/null; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS confix"
  function confix() {
    git status -s | egrep '^U' | awk '{ print $2 }' | xargs mvim
  }
fi
