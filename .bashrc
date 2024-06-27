#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# Import the colors.
. "${HOME}/.cache/wal/colors.sh"

PS1='\e[0;34m[\u:\w]\\$ \e[m'
# Create the alias.
alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
