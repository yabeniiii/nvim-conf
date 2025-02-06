require("yabeni.core.remap")
require("yabeni.core.set")

vim.api.nvim_create_autocmd("BufWritePre", {
  buffer = buffer,
  callback = function()
    vim.lsp.buf.format { async = false }
  end
})

vim.api.nvim_exec([[autocmd BufReadPost,FileReadPost * normal zR]], true)
