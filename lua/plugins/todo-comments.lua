return {
  "folke/todo-comments.nvim",
  event = "VimEnter",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo = require("todo-comments")
    todo.setup({
      signs = false,
    })

    vim.keymap.set("n", "]t", function()
      todo.jump_next()
    end, { desc = "Todo Comments: Jump to next [T]odo comment" })

    vim.keymap.set("n", "[t", function()
      todo.jump_prev()
    end, { desc = "Todo Comments: Jump to previous [T]odo comment" })

    vim.keymap.set("n", "<space>st", ":TodoTelescope<CR>", { desc = "Todo Comments: [S]earch [T]odo comments" })
  end,
}
