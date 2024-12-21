# dotfiles
## why?
here they won't be lost. you can use them, if find them useful.

## how to use?
```bash
git clone https://github.com/coldousedbird/dotfiles
cd dotfiles
stow bash nvim sway etc
```

stow creates symlinks to files, depending on their path, e.g.:
if file's path is `./dotfiles/kitty/.config/kitty/kitty.conf`
after `cd dotfiles && stow kitty` will be created symlink in `~/.config/kitty/kitty.config`

## programs
### in use right now
- kitty           - cool terminal emulator
- fastfetch       - fast neofetch
- cmatrix         - fun
- git             - version control system
- stow            - easy configs 
- fd              - fast file search
- ripgrep         - recursively searches for content inside files
- translate-shell - tty translator
- wl-clipboard    - wayland clipboard manager
- nvim            - advanced vim with lua
- eza             - ls+tree, but better
- cmus            - tty music player in C
### potentially useful
- zoxide - cd with memory
- bat    - cat with syntax higlighting and more
- most   - more and less pagers alternative


## dots
### bash
important files, which are placed in user home directory ~.
1. `.bashrc`       - holds some environment variables and invokes default etc/.bashrc and ~/.bash_aliases.
2. `.bash_aliases` - contains useful aliases, which can be used as shortcuts or helping note for memorizing complex commands.
3. `.inputrc`      - aliases for vim-like terminal mode.
4. `.gitconfig`    - aliases and some data for git commands.

### kitty
wonderful terminal emulator!

### nvim
complex modular text editor. you can find more detailed description in nvim/README.md
placed in nvim.
#### packages
1. lazy.nvim - package manager
2. neainas/everforest-nvim - colorscheme
3. nvim-treesitter/nvim-treesitter - stuff which analyze code and build abstract syntax tree (very hard to understand, I know)
4. nvim-telescope/telescope.nvim - fuzzy finder (to search things)
5. nvim-telescope/telescope-file-browser.nvim - file browser on top of telescope
6. lualine.nvim - information line at the bottom
7. which-key.nvim - hotkeys clue pop up
8. colorizer.nvim - highlighting colors in text

#### hotkeys
leader is space
 0. leader+l  - lazy package manager menu
 1. leader+b  - file browser
 2. leader+f  - fuzzy files finder (needs further setup)
 3. leader+p  - find content of files
 4. leader+t  - spawn new empty tab (in which you can open file with file browser)
 5. shift+t   - switch to next tab
 6. ctrl+t    - switch to next tab
 7. leader+w  - spawn new window (inside tab)
 8. ctrl+hjkl - switch windows
 9. ZQ        - :q! - quit without saving (quit from file will close it's window or tab (if tab has single window))
10. ZZ        - :wq - save and quit       (quit from file will close it's window or tab (if tab has single window))
 

### sway 
tiling window compositor, running under Wayland. there are also dots for wofi and other related stuff.

### mangohud
monitoring overlay. mostly for games.

### fonts
cool "CommitMono" nerdfont from [here](https://www.nerdfonts.com/font-downloads)
