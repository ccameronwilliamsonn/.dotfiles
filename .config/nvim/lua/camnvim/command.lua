vim.api.nvim_create_autocmd({"BufWritePre",}, { pattern = {"*.ts"}, command = "Neoformat"})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
