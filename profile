#######################################################
#                                                     #
#   This is my shell profile script                   #
#   "soruce .profile" if needed                       #
#   if aliases are needed change bash_aliases         #
#                                                     #
#######################################################

# bash aliases
source ~/.bash_aliases

## needed for bash-completion to run on mac
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

## console colors (most commented out because not needed
# regular colors
# RED="\[\033[0;31m\]"
# LRED="\[\033[1;31m\]"
# GREEN="\[\033[0;32m\]"
LGREEN="\[\033[1;32m\]"
# BLUE="\[\033[0;34m\]"
LBLUE="\[\033[1;34m\]"
# PURPLE="\[\033[0;35m\]"
LPURPLE="\[\033[1;35m\]"
# CYAN="\[\033[0;36m\]"
LCYAN="\[\033[1;36m\]"
# YELLOW="\[\033[0;33m\]"
LYELLOW="\[\033[1;33m\]"
# BROWN="\[\033[0;33m\]"
# GRAY="\[\033[1;30m\]"
LGRAY="\[\033[0;37m\]"
# WHITE="\[\033[1;37m\]"
NON="\[\033[0m\]"

# background colors
# BGREY="\[\033[40m\]"
# BRED="\[\033[41m\]"
# BGREEN="\[\033[42m\]"
# BYELLOW="\[\033[43m\]"
# BBLUE="\[\033[44m\]"
# BPURPLE="\[\033[45m\]"
# BCYAN="\[\033[46m\]"
# BWHITE="\[\033[47m\]"

# the old one looked like this Anupams-MacBook-Pro:~ Anupam$
#export PS1="$LCYAN\h:$LPURPLE\W $LRED\u$LGREEN\$(parse_git_branch)$LYELLOW\$ $NON"
#export PS1="💾   $LCYAN\u:$LPURPLE\W$NON 💾 🚀 $LGREEN\$(parse_git_branch)$NON\$ "

export PS1="💾  $LCYAN\u@\h:$LPURPLE\W$LGREEN\$(parse_git_branch)$LYELLOW\$ $NON"

# above PS1 without colors
#export PS1="\h:\W \u\$ " # the old one looked without colors
#export PS1="\u:\W \$(parse_git_branch)$NON\$ "

# had to modify PATH for homebrew (Mac)
# might need to remove for other distros.
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# needed for virtualenvwrapper, python environments
export WORKON_HOME=~/.virtualenvs
#to start environments run command below:
#source /usr/local/bin/virtualenvwrapper.sh
