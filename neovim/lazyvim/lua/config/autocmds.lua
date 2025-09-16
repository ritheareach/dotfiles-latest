-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Mermaid file type detection
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.mmd", "*.mermaid" },
  callback = function()
    vim.bo.filetype = "mermaid"
  end,
})

-- Disable formatting for HTML files to preserve mermaid diagrams
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Enable mermaid highlighting in HTML script tags
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.cmd([[
      syntax region htmlScriptMermaid start=+<script[^>]*class=["']mermaid["'][^>]*>+ end=+</script>+ contains=@mermaid
      syntax region htmlDivMermaid start=+<div[^>]*class=["']mermaid["'][^>]*>+ end=+</div>+ contains=@mermaid
    ]])
  end,
})
