## Powershell-Modules
Import-Module -Name Terminal-Icons
Import-Module -Name Microsoft.WinGet.CommandNotFound

## Oh-My-Posh prompt
oh-my-posh init pwsh --config "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/di4am0nd.omp.json" | Invoke-Expression

## PsReadLine
Set-PSReadLineOption -PredictionSource HistoryAndPlugin
Set-PSReadLineOption -PredictionSource History
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionViewStyle InlineView
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward