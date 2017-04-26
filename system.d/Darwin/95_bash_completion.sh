completion_path="/usr/local/etc/bash_completion"
if test -f "$completion_path"; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS bash-comp"
  . "$completion_path"
fi
unset completion_path
