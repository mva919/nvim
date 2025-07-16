vim.keymap.set('n', '<leader><leader>r', ':source %<CR>', { desc = 'Source current file' })

-- Clears highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

