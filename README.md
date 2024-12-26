# PowerShell Dotfiles

## Contents 📦

- Powershell Configuration

## Navigation ✈️

[Back To Windows-Dotfiles <-](https://github.com/edmundo2009/Windows-Dotfiles) (For Detailed Setup)

- [Navigate To Neovim Dotfiles <-](https://github.com/edmundo2009/nvim) (For Detailed Setup)

- [Navigate To Dotfile Automizer <-](https://github.com/edmundo2009/Dotfile-Automizer) (For Detailed Setup)

## Dependencies 📃

- Git >= 2.19.0 (for partial clones support)

- Nerd Fonts >= 3.0

## Font 🖌️

- [FiraCode-NF-Mono](https://www.nerdfonts.com/font-downloads) - Font

## Theme 🎭

- [Dracula](https://draculatheme.com/windows-terminal) - Dracula Color Theme

## Terminal 📟

- [Windows terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) - Terminal

## Shell 🛡️

- [PowerShell](https://apps.microsoft.com/detail/powershell/9MZ1SNWT0N5D?hl=en-us&gl=US) - Shell

## Setup ⚒️

##### Package Managers 📦

- [Rust](https://www.rust-lang.org/) - `winget install Rustlang.Rust.GNU` - <span style="opacity:30%">cargo</span>

- [Scoop](https://scoop.sh/) - `irm get.scoop.sh | iex` - <span style="opacity:30%">scoop</span>

- [NVM | NodeJS](https://github.com/coreybutler/nvm-windows) - <span style="opacity:30%">npm</span>
```
winget install CoreyButler.NVMforWindows
nvm install lts
nvm use lts
```

##### Winget - Windows Installed

- [Git](https://git-scm.com/download/win) - `winget install Git.Git`
- [Sudo & Jq](https://winget.run/) - `winget install gsudo jqlang.jq`
- [SQLite & MySQL](https://sqlite.org/index.html) - `winget install SQLite.SQLite`
- [Neovim](https://winget.run/search?query=neovim) - `winget install Neovim`
- [Oh-My-Posh](https://ohmyposh.dev/docs/installation/windows) - `winget install JanDeDobbeleer.OhMyPosh -s winget`
- [Yarn](https://yarnpkg.com/) - `winget install Yarn.Yarn`
- [Make](https://www.gnu.org/software/make/) - `winget install GnuWin32.Make`
- [Fzf](https://github.com/junegunn/fzf) - `winget install fzf`
- [Bat](https://github.com/sharkdp/bat) - `winget install sharkdp.bat`
- [LazyDocker](https://github.com/jesseduffield/lazydocker) - `winget install lazydocker`
- [NTop](https://github.com/gsass1/NTop) - `winget install ntop`
- [RipGrep](https://github.com/BurntSushi/ripgrep) - `winget install BurntSushi.ripgrep.MSVC`
- [LazyGit](https://github.com/jesseduffield/lazygit) - `winget install lazygit`

##### Scoop - Needs Installation

- [Fira-Font](https://github.com/ryanoasis/nerd-fonts) - `scoop install FiraCode-NF-Mono`

##### Cargo - Needs Installation

- [Gen-License](https://github.com/nexxeln/license-generator) - `cargo install gen-license`

##### Powershell - Powershell Installed

- [PSFzf](https://github.com/kelleyma49/PSFzf) - `Install-Module -Name PSFzf`
- [Posh-Git](https://www.powershellgallery.com/packages/posh-git) - `Install-Module posh-git -Scope CurrentUser`
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) - `Install-Module -Name Terminal-Icons -Repository PSGallery -Force`
- [PSReadLine](https://github.com/PowerShell/PSReadLine) - `Install-Module PSReadLine -AllowPrerelease -Force`
- [Z Directory](https://www.powershellgallery.com/packages/z/1.1.13) - `Install-Module -Name z`

##### NodeJS - Needs Installation

- [Comitizen](https://github.com/streamich/git-cz)
```
npm install -g commitizen
npm install -g cz-conventional-changelog

In Your Home Folder:
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

- [Npm-Check-Updates](https://www.npmjs.com/package/npm-check-updates) - `npm install -g npm-check-updates`

## Directory Structure 🗂️

```
📂$HOME/.config/PowerShell
|__📂themes
|   |__📄minimalNight.omp.json
|__📄user_profile.ps1
```

## Info ℹ️

<details>
<summary>Debugging 🐞</summary>

Problem: `Icons are not showing completly`

Fix:
```
Some fonts do not work well with some color themes and can cause that issue or the terminal.
You have to try until you find the right font, switch the theme, terminal or make tweaks by yourself. Generaly fonts ending with mono work.
```

Problem: `Commitizen opening editor instead of commit options`

Fix:
```
Friendly setup for commitizen globally:
npm install -g commitizen cz-conventional-changelog && echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

Problem: `Scoop buckets wont update`

Fix:
```
scoop config SCOOP_BRANCH master
scoop update
```

</details>
