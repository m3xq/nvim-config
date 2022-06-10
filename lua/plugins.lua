local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'https://github.com/sainnhe/everforest' -- theme
Plug 'https://github.com/vim-airline/vim-airline' -- status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' -- status bar themes
Plug 'glepnir/dashboard-nvim' -- start screen
Plug 'nvim-lua/plenary.nvim' -- All the lua functions I don't want to write twice.
Plug 'nvim-telescope/telescope.nvim' -- fuzzy finder
Plug 'windwp/nvim-autopairs' -- autopairs
Plug 'jghauser/mkdir.nvim' -- automatically creates missing directories on saving a file
Plug 'vim-test/vim-test' -- testing
Plug 'f-person/git-blame.nvim' -- git blame
Plug 'lewis6991/gitsigns.nvim' -- git status
Plug 'ryanoasis/vim-devicons' -- icons
Plug 'kyazdani42/nvim-web-devicons' -- icons
Plug 'preservim/tagbar' -- inmemory tags for current file
Plug 'kyazdani42/nvim-tree.lua' -- project tree
Plug 'romgrk/barbar.nvim' -- buffers
Plug 'numToStr/Comment.nvim' -- comments
Plug('neoclide/coc.nvim', { ['branch'] = 'release'}) -- lsp

-- golang
Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries' }) 
vim.call('plug#end')

require('telescope')
require("nvim-autopairs").setup {}
require('gitsigns').setup()
require('nvim-tree').setup {}
require('Comment').setup()
