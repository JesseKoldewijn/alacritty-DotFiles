@echo off

# Making sure path is set
set PATH=%PATH%;

# Commands
    # NodeJS
    alias pn=pnpm $*
    # Git
    alias g=git $*
    alias gc=git commit -m $*
    # System
    alias clear=cls $*