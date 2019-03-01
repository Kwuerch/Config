# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

source $HOME/.git-prompt.sh

# Shell Options
#
# Don't use ^D to exit
set -o ignoreeof
#
# Make bash append rather than overwrite the history on disk
shopt -s histappend
#
# When changing directory small typos can be ignored by bash
# for example, cd /vr/lgo/apaache would find /var/log/apache
shopt -s cdspell
#
# Set Shell color to 256 color
export TERM=xterm-256color
# Setup PS1
#
export PS1="[\033[32m\u@\h\033[39m] \033[35m\w\033[32m\$(__git_ps1)\033[00m $ "

# Completion options
#
# Uncomment to turn on programmable completion enhancements.
# Any completions you add in ~/.bash_completion are sourced last.
[[ -f /etc/bash_completion ]] && . /etc/bash_completion

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
#
# Ignore some controlling instructions
# HISTIGNORE is a colon-delimited list of patterns which should be excluded.
# The '&' is a special pattern which suppresses duplicate entries.
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit'
export HISTIGNORE=$'[ \t]*:&:[fb]g:exit:ls' # Ignore the ls command as well

# Includes.
#
[ -f $HOME/.bash_aliases ] && . $HOME/.bash_aliases
