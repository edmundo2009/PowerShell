<h1>PowerShell Dotfiles</h1>

[Back To Windows-Dotfiles <-](https://github.com/AndreM222/Windows-Dotfiles) (For Detailed Setup)

<h2>Dependencies 📃</h2>

- Git >= 2.19.0 (for partial clones support)

- Nerd Fonts >= 3.0

<h2>Contents 📦</h2>

- Powershell Configuration

<h2>Font 🖌️</h2>

- [JetBrainsMonoNL NFM](https://www.nerdfonts.com/font-downloads) - Font

<h2>Theme 🎭</h2>

- [Dracula](https://draculatheme.com/windows-terminal) - Dracula Color Theme

<h2>Terminal 📟</h2>

- [Windows terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) - Terminal

<h2>Shell 🛡️</h2>

- [PowerShell](https://apps.microsoft.com/detail/powershell/9MZ1SNWT0N5D?hl=en-us&gl=US) - Shell

<h2>Setup ⚒️</h2>

<h5>Package Managers 📦</h5>

- [Python](https://www.python.org/) - `winget install python` - <span style="opacity:30%">pip</span>

- [Rust](https://www.rust-lang.org/) - `winget install Rustlang.Rust.GNU` - <span style="opacity:30%">cargo</span>

- [Scoop](https://scoop.sh/) - `irm get.scoop.sh | iex` - <span style="opacity:30%">scoop</span>

- [NVM | NodeJS](https://github.com/coreybutler/nvm-windows) - <span style="opacity:30%">npm</span>
```
winget install CoreyButler.NVMforWindows
nvm install lts
nvm use lts
```

<h5>Winget - Windows Installed</h5>

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

<h5>Scoop - Needs Installation</h5>

- [Fira-Font](https://github.com/ryanoasis/nerd-fonts) - `scoop install FiraCode-NF-Mono`

<h5>Cargo - Needs Installation</h5>

- [Gen-License](https://github.com/nexxeln/license-generator) - `cargo install gen-license`

<h5>Powershell - Powershell Installed</h5>

- [PSFzf](https://github.com/kelleyma49/PSFzf) - `Install-Module -Name PSFzf`
- [Posh-Git](https://www.powershellgallery.com/packages/posh-git) - `Install-Module posh-git -Scope CurrentUser`
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons) - `Install-Module -Name Terminal-Icons -Repository PSGallery -Force`
- [PSReadLine](https://github.com/PowerShell/PSReadLine) - `Install-Module PSReadLine -AllowPrerelease -Force`
- [Z Directory](https://www.powershellgallery.com/packages/z/1.1.13) - `Install-Module -Name z`

<h5>NodeJS - Needs Installation</h5>

- [Comitizen](https://github.com/streamich/git-cz)
```
npm install -g commitizen
npm install -g cz-conventional-changelog

In Your Home Folder:
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
```

- [Npm-Check-Updates](https://www.npmjs.com/package/npm-check-updates) - `npm install -g npm-check-updates`

<h2>Directory Structure 🗂️</h2>

```
📂$HOME/Documents/PowerShell
|__📂themes
|   |__📄minimalNight.omp.json
|__📄Microsoft.PowerShell_profile.ps1
|__📄powershell.config.json
```

<h2>Languages 🗣️</h2>
<details>
<summary>Completion, Format, Compiler, and Linter</summary>
<h3>Servers 🗃️ <hr style="margin-top: 0"></h3>

<h5>Winget - Windows Installed</h5>

`C++` winget install clangd

`Lua` winget install lua-language-server

<h5>NodeJS - Needs Installation</h5>

`Live-Server` npm install -g live-server

`Python` npm install -g pyright

`Typescript` npm install -g typescript typescript-language-server

`Tailwind CSS` npm install -g tailwindcss-language-server

<h5>Dotnet - Windows Installed</h5>

`C-Sharp` dotnet tool install --global csharp-ls 

<h3>Format Languages 📄 <hr style="margin-top: 0"></h3>

`C++` at the setup of llvm

<h5>Pip - Needs Installation</h5>

`Python` pip install --upgrade autopep8

<h5>NodeJS - Needs Installation</h5>

`Marksman` npm install -g marksman

`Typescript` npm install -g prettier

<h3>Compilers And Intrepeters ⚙️ <hr style="margin-top: 0"></h3>

<h5>Winget - Windows Installed</h5>

- [Python](https://www.python.org/) - At the installation of Python Package Manager

- [Rust](https://www.rust-lang.org/) - At the installation of Rust Package Manager

- [C++](https://winlibs.com/) - winget install -i LLVM.LLVM

<h5>NodeJS - Needs Installation</h5>

- [NodeJS](https://github.com/nvm-sh/nvm) - At the installation of NodeJS Package Manager
</details>

<details>
<summary>Debugging 🐞</summary>

Problem: `Icons are not showing completly`

Fix:
```
Some fonts do not work well with some color themes and can cause that issue or the terminal. 
You have to try until you find the right font, switch the theme, terminal or make tweaks by yourself. Generaly fonts ending with mono work.
```

Problem: `C-Sharp not running`

Fix: `You are required to create a project for it to work`

Problem: `Customize format`

Fix:
```
Look for the documentation to make the changes on the CLI.

For clang-format: https://clang.llvm.org/docs/ClangFormat.html
For prettier: https://prettier.io/docs/en/options.html#vue-files-script-and-style-tags-indentation
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

Problem: `C++ compiler not working`

Fix:
```
When installing LLVM choose add to path.
Also be use to be using clang if you are using LLVM
```


</details>
