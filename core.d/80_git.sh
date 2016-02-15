# User git tools
#
# must have git in PATH to enable
#
if which -s git; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS git-cleanup"

  function git-cleanup {
    git checkout develop
    # verify that you want to !

    echo "Fetching latest..."
    git fetch
    echo "Clearing stash..."
    git stash clear
    echo "Pruning removed branches..."
    git remote prune origin
    echo "Pruning merged branches..."
    git branch --merged origin/develop | egrep -v '^. (develop|master)$' | xargs -n 1 git branch -v -d
    echo "Pruning unused commits..."
    git prune
    echo "GC..."
    git gc
    echo "Clearing logs..."
    rm -fv log/*.log
    echo "All clean :)"
  }
fi
