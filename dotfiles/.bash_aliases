#
# ~/.bash_aliases: sourced by .bashrc for user aliases and functions.
#
# written: 27 June, 2009 by Egan McComb
#

# Enable color and human friendly output.
alias ls='ls -hN --color=auto'
alias dir='dir -h --color=auto'
alias vdir='vdir -h --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias less='less -R'

# Essential flag aliases.
alias df='df -h'
alias dfind='find . -type d -name'
alias du='du -h'
alias dus='du -s'
alias dut='du -c'
alias ffind='find . -type f -name'
alias la='ls -a'
alias le='ls -la'
alias ll='ls -l'
alias lm='ll | less'
alias lr='ls -R'
alias lt='ll -rt'
alias lx='ll -BX'
alias lz='ll -rS'
alias pong='ping -c 4'

# Specialized aliases.
alias myip='ip addr show | grep -w inet | grep -v 127.0.0.1 | awk "{ print \$2 }" | cut -d / -f 1'
