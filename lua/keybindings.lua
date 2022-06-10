local keymap = vim.keymap
local noremap_silent = { noremap = true, silent = true }

-- navigation between splits
keymap.set('n', '<C-J>', '<C-W><C-J>')
keymap.set('n', '<C-K>', '<C-W><C-K>')
keymap.set('n', '<C-L>', '<C-W><C-L>')
keymap.set('n', '<C-H>', '<C-W><C-H>')
keymap.set('i', 'jk', '<ESC>')

-- This unsets the "last search pattern" register by hitting return
keymap.set('n', '\\', ':noh<CR>', { silent = true })

-- dashboard
keymap.set('n', '<Leader>ff', ':DashboardFindFile<CR>', { silent = true })
keymap.set('n', '<Leader>fh', ':DashboardFindHistory<CR>', { silent = true })
keymap.set('n', '<Leader>fb', ':DashboardJumpMark<CR>', { silent = true })
keymap.set('n', '<Leader>fa', ':DashboardFindWord<CR>', { silent = true })
keymap.set('n', '<Leader>cn', ':DashboardNewFile<CR>', { silent = true })
keymap.set('n', '<Leader>tc', ':DashboardChangeColorscheme<CR>', { silent = true })

-- tagbar
keymap.set('n', '<C-T>', ':TagbarToggle<CR>', { silent = true, remap = true })

-- buffers
keymap.set('n', '˙', ':BufferPrevious<CR>', noremap_silent)
keymap.set('n', '¬', ':BufferNext<CR>', noremap_silent)
keymap.set('n', '¡', ':BufferGoto 1<CR>', noremap_silent)
keymap.set('n', '™', ':BufferGoto 2<CR>', noremap_silent)
keymap.set('n', '£', ':BufferGoto 3<CR>', noremap_silent)
keymap.set('n', '¢', ':BufferGoto 4<CR>', noremap_silent)
keymap.set('n', '∞', ':BufferGoto 5<CR>', noremap_silent)
keymap.set('n', '§', ':BufferGoto 6<CR>', noremap_silent)
keymap.set('n', '¶', ':BufferGoto 7<CR>', noremap_silent)
keymap.set('n', '•', ':BufferGoto 8<CR>', noremap_silent)
keymap.set('n', 'ª', ':BufferGoto 9<CR>', noremap_silent)
keymap.set('n', 'º', ':BufferLast<CR>', noremap_silent)
keymap.set('n', 'ç', ':BufferClose<CR>', noremap_silent)

-- project tree
keymap.set('n', '<C-n>', ":lua require'custom.tree'.toggle()<CR>", noremap_silent)


-- golang
