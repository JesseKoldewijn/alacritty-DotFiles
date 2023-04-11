@echo off

# Making sure path is set and is persistent 
# ? To add dir to path change following line to: 
# * set -U PATH /some/path/bin $PATH
set -U PATH $PATH

# Commands
    # NodeJS
    alias pn=pnpm $*
    # Git
    alias g=git $*
    alias gc=git commit -m $*
    # System
    alias clear=cls $*