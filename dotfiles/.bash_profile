##
# ~/.bash_profile: executed by bash(1) for login shells.
#
# written: 27 July, 2010 by Egan McComb
##

# Includes.
. $HOME/.bashrc

# Variables.
export EDITOR="vim"
export ERR_NARGS=3
export ERR_VARGS=5
export GREP_COLOR="1;31"
export GTK_IM_MODULE="xim"
export PAGER="less"
export PASSWORD_STORE_X_SELECTION="primary"
export PASSWORD_STORE_CLIP_TIME="15"

# Include some Windows software directories.
export PATH=/c/Program\ Files\ \(x86\)/PC-lint\ 9.0/:$PATH
export PATH=/c/Users/kylewuerch/.lint/:$PATH
export PATH=/c/ti/ccsv7/eclipse:$PATH
export PATH=/c/Keil_v5/UV4:$PATH

export PATH=$PATH:/mingw64/bin
export PATH=$PATH:/mingw32/bin
export PATH=$PATH:$HOME/bin

export VISUAL=$EDITOR
