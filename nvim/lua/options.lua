require "nvchad.options"
-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--

vim.g.autoformat = false

vim.opt.tabstop = 4
vim.opt.expandtab = false -- Use tabs instead of spaces
vim.opt.shiftwidth = 4 -- Set tab width (adjust as needed)
vim.opt.tabstop = 4 -- Ensure tab key inserts correct width
vim.opt.softtabstop = 4 -- Keeps indentation consistent
vim.opt.relativenumber = true
vim.o.wrap = false
vim.o.winborder = "rounded"
vim.opt.guicursor = {
  "n-v-c:block", -- Normal, visual, command: block cursor
  "i-ci-ve:hor20", -- Insert, command-insert, visual-excl: horizontal underline (20% height)
  "r-cr:hor20", -- Replace, command-replace: horizontal underline
  "o:hor50", -- Operator-pending: half-underline
  "a:blinkwait700-blinkoff400-blinkon250", -- blinking settings
}

vim.o.cursorlineopt = "both"
