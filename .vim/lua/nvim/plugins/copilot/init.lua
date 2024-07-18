vim.g.copilot_filetypes = {
  sh = true,
  gitcommit = true,
}

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.env",
  callback = function()
    -- disable copilot for .env files
    vim.b.copilot_enabled = false
  end,
})
