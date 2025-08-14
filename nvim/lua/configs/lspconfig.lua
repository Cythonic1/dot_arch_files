require("nvchad.configs.lspconfig").defaults()

vim.diagnostic.config(
  {
    underline = false,
    virtual_text = false,
    update_in_insert = false,
    severity_sort = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = " ",
        [vim.diagnostic.severity.WARN] = " ",
        [vim.diagnostic.severity.HINT] = " ",
        [vim.diagnostic.severity.INFO] = " ",
      }
    }
  }
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})
local servers = { "html", "cssls", "rust-analyzer", "clangd", "gopls", "python-lsp-server", "zls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
--

