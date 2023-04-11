@echo off

set PATH=%PATH%;

:: Commands
    :: NodeJS
    DOSKEY pn=pnpm $*
    :: Git
    DOSKEY g=git $*
    DOSKEY gc=git commit -m $*
    :: System
    DOSKEY clear=cls $*

:: Inject clink runtime into shell
    call clink inject | find /i "Clink already loaded in process"
    if not errorlevel 1 (
        cls
    ) else (
        call clink inject
        call cls
    )