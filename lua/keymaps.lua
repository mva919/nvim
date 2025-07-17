vim.keymap.set('n', '<leader><leader>r', ':source %<CR>', { desc = 'Source current file' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clears highlights' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { desc = '[T]oggle NvimTree' })
