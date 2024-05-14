-- Base mappings
vim.g.mapleader = ' '

-- Relative number
vim.keymap.set('n', '<leader>rn', ':set relativenumber!<CR>:set number!<CR>', {})

-- Absolute number
vim.keymap.set('n', '<leader>an', ':set number!<CR>:set relativenumber!<CR>', {})


-- Telescope
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})