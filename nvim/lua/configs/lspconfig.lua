require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust-analyzer", "clangd", "gopls", "python-lsp-server", "zls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
