# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Prompt
Import-Module -Name Terminal-Icons

$theme = "accent_minimalNight"
# minimalNight -> This one is predefined colors
# term_minimalNight -> This one changes based only on the terminal color
# alert_minimalNight -> This one changes only alerts based only on the terminal color
# accent_minimalNight -> This one changes based on the color of the terminal and the accent of pc (Windows Only)

$omp_file = Join-Path $PSScriptRoot "./themes/"$theme".omp.json"
oh-my-posh init pwsh --config $omp_file | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History

Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteWord
Set-PSReadLineKeyHandler -Chord 'Ctrl+Backspace' -Function DeleteChar
Set-PSReadLineKeyHandler -Chord 'Ctrl+LeftArrow' -Function BackwardWord
Set-PSReadLineKeyHandler -Chord 'Ctrl+RightArrow' -Function ForwardWord

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

$env:FZF_DEFAULT_OPTS="--color=fg:white,hl:blue,gutter:-1 --color=fg+:white,bg+:bright-black,hl+:blue --color=info:yellow,prompt:cyan,pointer:magenta --color=marker:magenta,spinner:yellow,header:bright-black"

# Bat
$env:BAT_THEME="base16"

# Alias
Set-Alias -Name vi -Value nvim
Set-Alias -Name vim -Value nvim

Set-Alias grep findstr
Set-Alias touch New-Item

Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias ds drives

Set-Alias wget Invoke-WebRequest

Set-Alias zip Compress-Archive
Set-Alias unzip Expand-Archive

Set-Alias g git

function rmf($path) { Remove-Item -force $path }

function la { Get-ChildItem -force @args }

function which($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

function server([string]$SERVERNAME) {
    if ($SERVERNAME) { netstat -ano | findstr "$SERVERNAME" }
    else { netstat -ano }
}

function drives { Get-PSDrive -PSProvider 'FileSystem' }

# Git
Import-Module posh-git
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"
