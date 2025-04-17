return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>fa", function()
      builtin.find_files({ hidden = true })
    end, { desc = "Telescope find all files in cwd including hidden files" })
    vim.keymap.set("n", "<leader>fd", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
    vim.keymap.set("n", "<leader>en", function()
      builtin.find_files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "Telescope find nvim config files" })
  end,
}
