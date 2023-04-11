@echo off

# Making sure path is set and is persistent 
# ? To add dir to path change following line to: 
# * export PATH=$PATH:/some/path/bin
# # OR
# * export PATH=/some/path/bin:$PATH 
export PATH=$PATH

# Commands
    # NodeJS
    alias pn=pnpm $*
    # Git
    alias g=git $*
    alias gc=git commit -m $*
    # System
    alias clear=cls $*