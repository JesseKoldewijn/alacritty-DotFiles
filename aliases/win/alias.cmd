@echo off

:: Makes sure to preload the PATH variable
set PATH=%PATH%;

:: Commands
    :: NodeJS
    DOSKEY pn=pnpm $*
    :: Git
    DOSKEY g=git $*
    DOSKEY gc=git commit -m $*
    :: System
    DOSKEY clear=cls $*