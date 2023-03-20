-- File containing general mappings.
local keymap  = vim.api.nvim_set_keymap
local cmd     = vim.cmd
local options = {noremap = true, silent = true}
local silent  = {silent = true}


-- Map leader to space.
vim.g.mapleader = " "

-- Exit insert mode with jj
keymap('i', 'jj', '<Esc>', options)

-- Moveing between windows.
keymap('n', '<C-h>', '<C-w>h', options)
keymap('n', '<C-j>', '<C-w>j', options)
keymap('n', '<C-k>', '<C-w>k', options)
keymap('n', '<C-l>', '<C-w>l', options)

-- ----------------------------------------------------------------------------
-- Telescope Mappings.
-- ----------------------------------------------------------------------------
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


