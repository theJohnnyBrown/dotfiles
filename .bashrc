
DOTFILES=~/dotfiles

#homebrew puts python libraries here:
export PATH=/usr/local/share/python:$PATH


# git autocomplete
source ~/toolscripts/git-completion.sh
source ~/toolscripts/git-prompt.sh

# default ubuntu bashrc
source $DOTFILES/ubuntu_bashrc

# local config
LP=~/.local_profile && test -f $LP && source $LP

#check for homebrew-installed bins and libs first
export PATH=/usr/local/bin:$PATH


RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PATH=/usr/local/lib/node_modules:$PATH


# PS1="\[\033[1;34m\][\$(date +%H:%M)][\u:\w]$\[\033[0m\]\n>> "

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export PATHONPATH=$PYTHONPATH:"/Library/Python/2.6/site-packages/"
export PYTHONPATH=$PYTHONPATH:"/Library/Python/2.6/site-packages/"
#alias ipython=ipython-2.6


# MacPorts Installer addition on 2011-01-03_at_18:06:43: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#export PATH=/usr/local/ncbi/blast/bin/:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#mysql binaries:
#export PATH=/usr/local/mysql-5.1.59-osx10.6-x86/bin/:$PATH


##
# Your previous /Users/johnny/.profile file was backed up as /Users/johnny/.profile.macports-saved_2011-01-03_at_18:10:58
##

# MacPorts Installer addition on 2011-01-03_at_18:10:58: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#export PYTHONPATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages";
#export DJANGO_SETTINGS_MODULE=clients.ferrisweb.settings
# Finished adapting your PATH environment variable for use with MacPorts.

#PS1="\[\033[1;34m\][\$(date +%H:%M)][\u@\h:\w]$\[\033[0m\] "
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad



if [ ! -f ~/.dirs ]; then  # if doesn't exist, create it
   touch ~/.dirs
fi

alias show='cat ~/.dirs'
save (){
     command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ; 
}
source ~/.dirs  # Initialization for the above 'save' facility: source the .sdirs file
shopt -s cdable_vars # set the bash option so that no '$' is required when using the above facility

# LEJOS_HOME="/Users/johnny/lejos_nxj"
# NXJ_HOME="$LEJOS_HOME"
# PATH="$LEJOS_HOME/bin:$PATH"
# export LEJOS_HOME NXJ_HOME
# export PATH

# alias ipython='ipython-2.6'
alias xx='clear'
alias em='open -a Emacs.app'

alias grep='grep --color="auto" -I --exclude="#*" --exclude="\.#*"'
alias gr='grep -r --color="auto" -I --exclude="#*" --exclude="\.#*"'


# PS1="\[\033[1;34m\][\$(date +%H:%M)][\u:\w]$\[\033[0m\] "
# export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad

#export PYTHONPATH=$PYTHONPATH:"/Library/Python/2.6/site-packages/"
# export PYTHONPATH=$PYTHONPATH:"/Users/johnny/Code/CSCI/Viamics/"
# export PYTHONPATH=$PYTHONPATH:"/Users/johnny/Desktop/mezzanine/"

#alias ipython=ipython-2.6

export EDITOR="emacsclient -nw"
export GIT_EDITOR=$EDITOR

complete -W "$(echo $(grep '^ssh ' ~/.bash_history | sort -u | sed 's/^ssh //'))" ssh

# if [ -f `brew --prefix`/etc/autojump ]; then
#   . `brew --prefix`/etc/autojump
# fi

__update_git_ps1 () {
    export GIT_PS1=`__git_ps1` #  Global vars never hurt anyone, right?
    export PS1="$GREEN[\u@\h \w$RED$GIT_PS1$GREEN]\$ $NO_COLOR"
}

if [ -z "$INSIDE_EMACS" ]; then
    export PROMPT_COMMAND=""
fi
# echo ".bashrc loaded"

export PROMPT_COMMAND="__update_git_ps1;$PROMPT_COMMAND"


export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH
 
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export LEIN_REPL_PORT=4555
