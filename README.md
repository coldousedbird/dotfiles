# dotfiles
## what
my messy dotfiles for everything.


## why
0. here they won't be lost. 
1. deploy my settings on any device in a minute.
2. syncronisation devices.
3. you can use them too, if want.


## where
i used fedora, ubuntu, arch, wsl, mint, void (and maybe something else i forgot), so configs somehow tailored to work with them all.


## to use
```bash
git clone https://github.com/coldousedbird/dotfiles
cd dotfiles
stow zsh nvim kitty etc
```
directories in repo can be applied independently.
stow creates symlinks to files, depending on their path, e.g.:
if file's path is `./dotfiles/kitty/.config/kitty/kitty.conf`, `cd dotfiles && stow kitty` will create symlink to it in `~/.config/kitty/kitty.config`


## setup
terminal: _shell_, _zsh_, _nvim_, _yazi_, _kitty_, _ssh_.
desktop: _niri_ and _noctalia_.

those configs are pretty nice, because i use and update them frequently.
the other are kinda abandoned or wait for their moment.

go to [state](## state) section for description of each.


## themes
i use theme `Everforest Dark` everywhere i can.


## fonts
i like CommitMono nerdfonts.
to download
```bash
mkdir -vp ~/.local/share/fonts/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CommitMono.zip -O ~/.local/share/fonts/CommitMono.zip
unzip ~/.local/share/fonts/CommitMono.zip -d ~/.local/share/fonts/
rm ~/.local/share/fonts/CommitMono.zip
```
also `fontconfig` is required.


## dotfiles state
> at the moment of 30.08.2026
### alive
- `shell` - aliases and environment. core of the system. posix-compliant, fits for bash and zsh.
- `zsh` - good shell
- `nvim` - good text editor
- `yazi` - great file management tool
- `kitty` - great terminal emulator
- `niri` - great wayland-composer
- `noctalia` - good desktop shell
- `git` - git config
- `ssh` - ssh config
- `htop` - htop config
- `fontconf` - simple config for [CommitMono](https://www.nerdfonts.com/font-downloads) nerdfonts

`- bash_server` - server minimal config
- `vim` - server minimal config

- `mangohud` - monitoring overlay for games

- `corne` - my corne split keyboard VIA layout schema

### waiting for their hour
- `brush` - rusty bash
- `helix` - rusty nvim

### abandoned
- `bash` - the most basic shell (switched to zsh)
- `sway` - tiling wayland composer (switched to niri)
- `hyprland` - tiling wayland composer (switched to niri)
- `waybar` - desktop bar (switched to noctalia)
- `ashell` - desktop shell (switched to noctalia)
- `lf` - tui file manager (switched to yazi)
- `ghostty` - terminal emulator (cool, but i already set up kitty)


## programs
### cli
- `kitty`           - cool terminal emulator
- `git`             - version control system
- `nvim`            - advanced vim with lua
- `stow`            - easy configs deploy
- `fd`              - fast file search
- `fzf`             - fuzzy find line from list 
- `ripgrep`         - recursively searches for content inside files
- `translate-shell` - tty translator
- `eza`             - better ls+tree
- `bat`             - cat with syntax higlighting
- `fastfetch`       - system info


### gui
- `chromium`     - browser
- `onlyoffice`   - officepack
- `hiddify`      - vpn client
- `transmission` - bittorrent client
- `krita`        - graphics editor
- `lutris`       - videogames manager
- `mpv`          - video player


### funny stuff to check later
- `id3v2`               - terminal id3-tags editor
- `zoxide`/mcfly        - cd with memory
- `most`                - more and less pagers alternative
- `ast-grep`            - seems like another searching tool
- `beautysh`            - bash scripts linter?
- `lazygit`             - tty git
- `duf`                 - new df
- `dust`                - new du
- `delta`               - new diff
- `choose`              - new awk
- `sd`                  - new sed
- `doggo`               - new dig
- `curlie`              - new curl
- `procs`               - new ps
- `hyperfine`           - new time
- `bottom`/glances/gtop - new top
- `toru`                - cli-tool for streaming bit-torrents without download.
- `btop`                - great resource monitoring tool

