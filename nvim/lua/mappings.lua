require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

map("n", "<leader>mm", function()
  require("telescope.builtin").man_pages {
    sections = { "2", "3", "4", "5" }, -- optional filter
  }
end, { desc = "Telescope: All Man Pages" })

map("n", "<leader>mh", function()
  require("telescope.builtin").man_pages {
    sections = { "2", "3", "4", "5" }, -- optional filter
    attach_mappings = function(prompt_bufnr, map)
      local actions = require "telescope.actions"
      local action_state = require "telescope.actions.state"

      -- Override the default selection action
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)

        -- Method 1: Create new split and ensure man page opens there
        vim.cmd "vsplit"
        vim.cmd "enew" -- Create empty buffer in new split
        vim.cmd("Man " .. selection.value)

        -- Alternative Method 2: Use wincmd to be more explicit (uncomment to try)
        -- vim.cmd("vsplit")
        -- vim.cmd("wincmd l")  -- move to right window
        -- vim.cmd("Man " .. selection.value)

        -- Alternative Method 3: Close original after opening (uncomment to try)
        -- local original_win = vim.api.nvim_get_current_win()
        -- vim.cmd("vsplit")
        -- vim.cmd("Man " .. selection.value)
        -- vim.api.nvim_win_close(original_win, false)
      end)

      return true
    end,
  }
end, { desc = "Telescope: All Man Pages (Vertical Split)" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
