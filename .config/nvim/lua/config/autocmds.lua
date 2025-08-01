-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Avalonia LSP
local avalonia_lsp_bin = "~/.vscode/extensions/avaloniateam.vscode-avalonia-0.0.32/avaloniaServer/AvaloniaLanguageServer.dll"
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.axaml" },
  callback = function()
    vim.cmd.setfiletype("xml")
    vim.lsp.start({
      name = "Avalonia LSP",
      cmd = {
        "dotnet",
        avalonia_lsp_bin,
      },
      root_dir = vim.fn.getcwd(),
    })
  end,
})
