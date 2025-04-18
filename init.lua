require("config.lazy")

local function check_for_config_update()
	vim.fn.system("git fetch")
	local status = vim.fn.system("git status")
	local isUpToDate = string.find(status, "git pull")
	if isUpToDate == nil then
		return
	end

	local choice = nil
	while choice ~= "y" and choice ~= "n" do
		choice = vim.fn.input(
			"New config changes dectected from origin:\n" .. status .. "\nDo you wish to sync with them? (Y/n)"
		)
	end

	if choice == "y" then
		print("\nSyncing with remote...\n")
		print(vim.fn.system("git pull"))
		print("\nSyncing complete.\n")
	end
end

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		check_for_config_update()
	end,
})

vim.keymap.set("n", "<leader><leader>x", "<Cmd>source %<CR>", { desc = "Source current file" })
vim.keymap.set("v", "<leader>x", ":lua<CR>", { desc = "Source highlighted text" })
vim.keymap.set("n", "<leader>x", ":.lua<CR>", { desc = "Source current line" })

vim.keymap.set("n", "<M-j>", ":cnext<CR>", { desc = "Go to next item in quick fix list" })
vim.keymap.set("n", "<M-k>", ":cprev<CR>", { desc = "Go to prev item in quick fix list" })
vim.keymap.set("n", "<leader>se", vim.diagnostic.open_float, { desc = "Open floating windows for warning and errors" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Hightlight text being yanked",
	group = vim.api.nvim_create_augroup("hightlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.scrolloff = 8 -- 8 line pading at bottom

vim.opt.colorcolumn = "80"
vim.opt.termguicolors = true

-- move lines up and down when they are highlighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
