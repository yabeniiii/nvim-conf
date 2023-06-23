require("aidanboland.remap")
require("aidanboland.set")
require("aidanboland.lazy")

vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format { async = false }
    end
})
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "ColorColumn", { fg = "#313244", bg = "#313244" })
    end
})
