# User git tools
#
# must have git in PATH to enable
#
if which -s git; then
  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS git-cleanup"

  function git-cleanup {
    YELLOW='\033[1;33m'
    GREEN='\033[1;32m'
    CLEAR='\033[00m'

    echo -e "${YELLOW}Fetching latest${CLEAR}"
    git fetch

    echo -e "${YELLOW}Resetting master${CLEAR}"
    git checkout master > /dev/null
    git reset --hard origin/master

    if git branch | egrep '^. develop$' >/dev/null; then
      echo -e "${YELLOW}Resetting develop${CLEAR}"
      git checkout develop > /dev/null
      git reset --hard origin/develop
    fi

    echo -e "${YELLOW}Clearing stash${CLEAR}"
    git stash clear

    echo -e "${YELLOW}Pruning removed branches${CLEAR}"
    git remote prune origin

    echo -e "${YELLOW}Pruning merged branches${CLEAR}"
    git branch --merged origin/master | egrep -v '^. (develop|master)$' | xargs -n 1 git branch -v -d

    echo -e "${YELLOW}Pruning unused commits${CLEAR}"
    git prune

    echo -e "${YELLOW}GC${CLEAR}"
    git gc

    if [ -d log ]; then
      echo -e "${YELLOW}Clearing logs${CLEAR}"
      rm -fv log/*.log
    fi

    echo ""
    echo -e "${GREEN}All clean :)${CLEAR}"
    echo ""
  }

  export SHELL_CONFIG_TOOLS="$SHELL_CONFIG_TOOLS git-sync-upstream"

  function git-sync-upstream {
    YELLOW='\033[1;33m'
    GREEN='\033[1;32m'
    CLEAR='\033[00m'


    echo -e "${YELLOW}Fetching latest upstream${CLEAR}"
    git fetch upstream

    echo -e "${YELLOW}Resetting master${CLEAR}"
    git checkout master > /dev/null
    git reset --hard upstream/master

    echo -e "${YELLOW}Pushing synced master${CLEAR}"
    git push -f origin master

    echo ""
    echo -e "${GREEN}All synced :)${CLEAR}"
    echo ""
  }
fi
