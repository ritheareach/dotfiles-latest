return {
  "petobens/poet-v",
  ft = "python",
  config = function()
    -- Optional: Configure poet-v settings
    vim.g.poetv_executables = { "poetry" }
    vim.g.poetv_auto_activate = 1
  end,
}