# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Command aliasses
    # Git
    Set-Alias -Name g -Value git
    function gc([string]$commitMsg)
    {
        git commit -m "$commitMsg"
    }
    
    # NodeJS
    Set-Alias -Name pn -Value pnpm
    Set-Alias -Name np -Value npm

# Start starship shell
Invoke-Expression (&starship init powershell)