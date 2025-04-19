# dotfiles
## what?
my dotfiles for everything: settings, aliases, functions and other.


## why?
0. here they won't be lost. 
1. deploy my settings on any device in a minute.
2. syncronisation between devices.
4. you can use them, if want.


## os
i use fedora, arch, and wsl ubuntu on different devices.


## terminal programs
### in use right now
- kitty           - cool terminal emulator
- fastfetch       - showing system information and logo
- cmatrix         - funny letter flowing
- git             - version control system
- nvim            - advanced vim with lua
- stow            - easy configs deploy
- fd              - fast file search
- fzf             - fuzzy find line from list ripgrep         - recursively searches for content inside files translate-shell - tty translator wl-clipboard    - wayland clipboard manager eza             - better ls+tree
- cmus            - tty music player in C
- id3v2           - terminal id3-tags editor
- bat             - cat with syntax higlighting
- btop            - great resource monitoring tool

### potentially useful
- zoxide/mcfly       - cd with memory
- most                - more and less pagers alternative
- xxh                 - tool for using dotfiles via SSH connection (maybe `kitten ssh` would be more useful)
- ast-grep            - seems like another searching tool
- beautysh            - bash scripts linter?
- yazi/ranger/lf      - file managers.
- lazygit             - tty git
- duf                 - new df
- dust                - new du
- delta               - new diff
- choose              - new awk
- sd                  - new sed
- doggo               - new dig
- curlie              - new curl
- procs               - new ps
- hyperfine           - new time
- bottom/glances/gtop - new top
- toru                - cli-tool for streaming bit-torrents without download.


## gui programs
### in use right now
- chromium - browser
- telegram - telegram client
- yandex music - music player
- hiddify - vpn client
- transmission - bittorrent client
- onlyoffice - officepack
- krita - graphics editor
- lutris - videogames manager
- PCSX2 - PS2 emulator
- mpv - video player
### potentially useful
- kdenlive - video editor


## dots
- bash     - important files, which are placed in user home directory ~.
- kitty    - simple config of wonderful terminal emulator.
- nvim     - complex modular text editor. 
             config was massively inspired by [typecraft](https://github.com/cpow/neovim-for-newbs) and [ampersand](https://github.com/Andrey0189/nvim-config).
             kudos to these distinguished gentlemans.
- sway     - tiling window compositor, running under Wayland. there are also dots for wofi and other related stuff.
- mangohud - monitoring overlay. mostly for games.
- fonts    - cool "CommitMono" nerdfont from [here](https://www.nerdfonts.com/font-downloads)
- themes   - borderless everforest themes for Gtk and gnome-shell


## how to use?
```bash
git clone https://github.com/coldousedbird/dotfiles
cd dotfiles
stow bash nvim sway etc
```
stow creates symlinks to files, depending on their path, e.g.:
if file's path is `./dotfiles/kitty/.config/kitty/kitty.conf`
after `cd dotfiles && stow kitty` will be created symlink in `~/.config/kitty/kitty.config`


## TODO
- checkout .inputrc.
- add minimal bash and vi dotfiles for `kitten ssh` and set up coping them on target host.
- checkout other shells, such as _scsh_ or _zsh_ (without stupid plugins). 
- add terminal doom binary right here.
- substitute actual theme and fonts in repo with some short installation script. font and theme is not a dotfiles.

