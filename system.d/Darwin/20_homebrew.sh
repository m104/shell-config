# homebrew
brewpath="/usr/local/sbin"
if test -d "$brewpath"; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS brew"
  export PATH="$brewpath:$PATH"
fi
unset brewpath
