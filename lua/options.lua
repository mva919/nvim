-- Must set leader keys before loading plugins
vim.g.mapleader = " "
vim.g.localleader = " "

vim.g.have_nerd_font = true

vim.o.number = true
vim.o.relativenumber = true

-- Enabling mouse mode (easier for resizing windows)
vim.o.mouse = "a"

-- Hiding the mode since it already shows up on status line
vim.o.showmode = false

-- Wrapped lines will continue on the line below with the same indentation applied as the beginning of the non-wrapped line.
vim.o.breakindent = true

-- Persists undo history, usually deleted after nvim is exited and file is written
vim.o.undofile = true

-- Case insensitive search unless using \c or \C
vim.o.ignorecase = true
-- Makes search case sensitive if there is an uppercase present
vim.o.smartcase = true

-- Always have the signcolumn showing (even if empty)
vim.o.signcolumn = "yes"

-- When splitting horizontally, puts new window below the current one
vim.o.splitbelow = true
-- When splitting vertically, puts new window on the right of current one
vim.o.splitright = true

-- Makes extensions that depend on CursorHold autocmd to be more performant
vim.o.updatetime = 250
-- Time in to complete a mapped sequence
vim.o.timeoutlen = 300

-- Leave 10 lines above or below when scrolling
vim.o.scrolloff = 10

-- Highlights line cursor is currently on
vim.o.cursorline = true

-- Gives confirmation pop-up when doing commands that can fail unsaved buffers
vim.o.confirm = true

-- Display hidden whitespace characters
vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Insert spaces for tabs
vim.o.expandtab = true

-- When doing incremental commands it shows changes that will be applied off screen
vim.o.inccommand = "split"

-- Syncing with OS clipboard
-- Scheduling the setting after 'UIEnter' because it could increase start up time
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)
