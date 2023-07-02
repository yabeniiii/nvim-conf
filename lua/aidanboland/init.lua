require("aidanboland.remap")
require("aidanboland.set")
require("aidanboland.lazy")

vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})
