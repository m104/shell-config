SHELL_CONFIG_BASEDIR="$HOME/.shell"

# ensure each prompt starts on a new line
function reset_for_new_prompt() {
  printf "%b%${COLUMNS}b%b" "\033[0;7m%\033[0m" "\r" "\e[K"
}
export PROMPT_COMMAND="reset_for_new_prompt${PROMPT_COMMAND:+; $PROMPT_COMMAND}"

if test "`type -t __git_ps1`" = "function"; then

  # extra git prompt options
  #export GIT_PS1_SHOWSTASHSTATE=1
  #export GIT_PS1_SHOWDIRTYSTATE=1
  #export GIT_PS1_SHOWUNTRACKEDFILES=1
  #export GIT_PS1_SHOWUPSTREAM='auto'

  # initialize git prompt
  GIT_PROMPT='\[\033[1;33m\]$(__git_ps1 "~%s")\[\033[00m\]'
fi

# shell prompt with git status magic
export PS1="\[\033[01;30m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$GIT_PROMPT\$ "

# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# history config
export HISTSIZE=1000
export HISTFILESIZE=2000
# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# append history, don't overwrite
shopt -s histappend

# case-insensitive completion
bind 'set completion-ignore-case on'

# safety aliases
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# convenience aliases
alias ls='ls -G'
alias ll='ls -G -l'

# stylistic updates
export LSCOLORS='ExGxBxFxCxdxDxHbHbacad'
export GREP_COLOR='30;42'
alias grep='grep --color=auto'

# development aliases
alias be='bundle exec'

if test -f ~/.bash_aliases; then
  export SHELL_CONFIG_MODS="$SHELL_CONFIG_MODS aliases"
  source ~/.bash_aliases
fi

unset SHELL_CONFIG_BASEDIR
