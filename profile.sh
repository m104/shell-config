# this repo's directory
export SHELL_CONFIG_BASEDIR="$HOME/.shell"

# show debug info?
export SHELL_CONFIG_DEBUG=false

# initialize these
export SHELL_CONFIG_MODS=""
export SHELL_CONFIG_TOOLS=""

function shell_env_debug {
  $SHELL_CONFIG_DEBUG && echo "[sh-env-dbg] $1"
}

# local env script
if test -r "$SHELL_CONFIG_BASEDIR/local/env.sh"; then
  shell_env_debug "Loading local env script..."
  source "$SHELL_CONFIG_BASEDIR/local/env.sh"
fi

# core scripts
shell_env_debug "Loading core scripts..."
for SCRIPT in "$SHELL_CONFIG_BASEDIR/core.d/"*.sh; do
  test -r "$SCRIPT" || continue
  shell_env_debug "Running: $SCRIPT"
  source "$SCRIPT"
done

# system scripts
system_type=`uname`
shell_env_debug "Loading system \"$system_type\" scripts..."
for SCRIPT in "$SHELL_CONFIG_BASEDIR/system.d/$system_type/"*.sh; do
  test -r "$SCRIPT" || continue
  shell_env_debug "Running: $SCRIPT"
  source "$SCRIPT"
done

# common scripts
shell_env_debug "Loading common scripts..."
for SCRIPT in "$SHELL_CONFIG_BASEDIR/common.d/"*.sh; do
  test -r "$SCRIPT" || continue
  shell_env_debug "Running: $SCRIPT"
  source "$SCRIPT"
done

# done
shell_env_debug "Done"

unset SHELL_CONFIG_BASEDIR
unset SHELL_CONFIG_DEBUG
