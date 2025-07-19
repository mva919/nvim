vim.keymap.set('n', '<leader><leader>r', ':source %<CR>', { desc = 'Source current file' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clears highlights' })

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = '[T]oggle Nvim[T]ree' })

vim.keymap.set('n', '<leader>tu', ':UndotreeToggle<CR>', { desc = '[T]oggle [U]ndoTree' })

-- Move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
