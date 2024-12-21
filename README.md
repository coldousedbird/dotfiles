# dotfiles
## why?
here they won't be lost. you can use them, if find them useful.

## how to use?
```bash
git clone https://github.com/coldousedbird/dotfiles
cd dotfiles
stow bash nvim sway
```

stow creates symlinks to files, depending on their path, e.g.:
if file's path is `./dotfiles/kitty/.config/kitty/kitty.conf`
after `cd dotfiles && stow kitty` will be created symlink in `~/.config/kitty/kitty.config`

## programs
### in use right now
kitty           - cool terminal emulator
fastfetch       - fast neofetch
cmatrix         - fun
git             - version control system
stow            - easy configs 
fd              - fast file search
ripgrep         - recursively searches for content inside files
translate-shell - tty translator
wl-clipboard    - wayland clipboard manager
nvim            - advanced vim with lua
eza             - ls+tree, but better
cmus            - tty music player in C
### potentially useful
zoxide - cd with memory
bat    - cat with syntax higlighting and more
most   - more and less pagers alternative


## dots
### bash
important files, which are placed in user home directory ~.
1. .bashrc       - holds some environment variables and invokes default etc/.bashrc and ~/.bash_aliases.
2. .bash_aliases - contains useful aliases, which can be used as shortcuts or helping note for memorizing complex commands.
3. .inputrc      - aliases for vim-like terminal mode.
4. .gitconfig    - aliases and some data for git commands.

### kitty
wonderful terminal emulator!

### nvim
complex modular text editor. you can find more detailed description in nvim/README.md
placed in nvim 

### sway 
tiling window compositor, running under Wayland. there are also dots for wofi and other related stuff.

### mangohud
monitoring overlay. mostly for games.



