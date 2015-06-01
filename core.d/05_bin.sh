# User ~/bin PATH support
#
# must have ~/bin directory to enable
#
binpath="$HOME/bin"
if test -d "$binpath"; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS bin"
  export PATH="$binpath:$PATH"
fi
unset binpath
