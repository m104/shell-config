# Docker Machine support
#
# must have docker-machine available and running
#
if which -s docker-machine; then
  if docker-machine ls | egrep '^default ' >/dev/null; then
    export SHELL_CONFIG_ENV="$SHELL_CONFIG_ENV docker-machine[default]"
    eval "$(docker-machine env default)"
  fi
fi

