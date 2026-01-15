function clash {
    $env:HTTP_PROXY="http://127.0.0.1:7897"; $env:HTTPS_PROXY="http://127.0.0.1:7897"
}

function d {
    nr dev
}

function gmc {
    gitmoji -c
}

function wez {
    Start-Job -ScriptBlock { wezterm -e --cwd $(pwd) --new-tab } > $null
}

Remove-Item Alias:gm -Force -ErrorAction Ignore
Remove-Item Alias:ni -Force -ErrorAction Ignore

Set-Alias -Name w -Value wsl
Set-Alias -Name np -Value Notepad.exe
Set-Alias -Name open -Value explorer.exe
Set-Alias -Name gm -Value gitmoji
Set-Alias -Name oc -Value opencode

oh-my-posh init pwsh --config "E:/patriksvensson.omp.json" | Invoke-Expression
