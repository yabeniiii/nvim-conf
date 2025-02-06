vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessioniser <CR>")

vim.keymap.set("n", "<T-Left>", "<cmd>TmuxResizeLeft<CR>")
vim.keymap.set("n", "<T-Up>", "<cmd>TmuxResizeUp<CR>")
vim.keymap.set("n", "<T-Down>", "<cmd>TmuxResizeDown<CR>")
vim.keymap.set("n", "<T-Right>", "<cmd>TmuxResizeRight<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<C-w>z', '<cmd>tab split<CR>')

vim.keymap.set('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<leader>dr', '<cmd>DapContinue<CR>')
vim.keymap.set('n', '<leader>dn', '<cmd>DapStepOver<CR>')
vim.keymap.set('n', '<leader>di', '<cmd>DapStepInto<CR>')
vim.keymap.set('n', '<leader>ds', '<cmd>DapTerminate<CR>')
vim.keymap.set('n', '<leader>dl', "<cmd>DapLoadLaunchJSON<CR>")
vim.keymap.set('n', '<leader>md', '<cmd>Man<CR>')
