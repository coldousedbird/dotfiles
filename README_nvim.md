# nvim
## config
configs to neovim are in ~/.config/nvim by default.

## packages
1. lazy.nvim - package manager
2. neainas/everforest-nvim - colorscheme
3. nvim-treesitter/nvim-treesitter - stuff which analyze code and build abstract syntax tree (very hard to understand, I know)
4. nvim-telescope/telescope.nvim - fuzzy finder (to search things)
5. nvim-telescope/telescope-file-browser.nvim - file browser on top of telescope
6. lualine.nvim - information line at the bottom
7. which-key.nvim - hotkeys clue pop up
8. colorizer.nvim - highlighting colors in text

## hotkeys
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

