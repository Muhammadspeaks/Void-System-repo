# .bashrc

# ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
# ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║     
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
# ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
# ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# General aliases 
alias i='doas xbps-install -S'
alias q='doas xbps-query'
alias r='doas xbps-remove -S'
alias u='doas xbps-install -S; doas xbps-install -u; doas xbps-install xbps'
alias vi='vim'
alias ll='ls -l --color=auto'

# sxhkd
alias sx-restart='kill -10 $(pidof sxhkd)'

# Setting Shell-Mode to vim mode
set -o vi 

# 1. Prompt
PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

# Git Configuration
# For clonning subdirectories from git repositiries
# This script is quite simple, this is what it does:
#  1) Extract the repo name from the link (github.com/author/repo-name).
#  2) Create a git project with the repo name + add the origin from the link.
#  3) Then update the tree configuration of our project.
#  4) As an optional parameter, we have the branch, if it's provide, the script will clone a sub directory from that branch,
#  otherwise, it will clone from master (you can change that with main if you want).

_git_clone_sub ()
{
    REPO_NAME="$(echo $2 | grep -oE '[^/]+$')";
    git clone --filter=blob:none --no-checkout $2
    cd $REPO_NAME;
    git sparse-checkout set --no-cone "$1/*"
    if [ -n "$3" ]; then
        git pull origin $3;
        git checkout $3;
    else
        git fetch origin;
        git checkout main
        [[ $? != 0 ]] && git checkout master;
    fi
}

