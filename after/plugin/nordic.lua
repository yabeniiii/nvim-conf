-- huh
local palette = require("nordic.colors")
local opts = require("nordic.config").options
require('nordic').setup {
    telescope = {
        style = "classic",
    },
    noice = {
        style = "classic",
    },

    transparent_bg = true,

    override = {
        Comment = {
            fg = palette.green.dim,
            italic = true,
        },
        TelescopeBorder = { bg = palette.none },
        TelescopePromptBorder = { bg = palette.none },
        TelescopeResultsBorder = { bg = palette.none },
        TelescopePreviewBorder = { bg = palette.none },
        TelescopePromptNormal = { bg = palette.none },
        TelescopeResultsNormal = { bg = palette.none },
        TelescopePreviewNormal = { bg = palette.none },
        TelescopeSelection = { bg = palette.gray4 },
        TelescopeSelectionCaret = { bg = palette.gray4 },
        TelescopePromptPrefix = { bg = palette.none },
        NoiceCmdlinePopup = { bg = palette.none },
        NoiceCmdline = { bg = palette.gray4 },
        NoiceCmdlineIcon = { bg = palette.none },
        NvimTreeGitDirty = { fg = palette.yellow.dim },
        NvimTreeGitNew = { fg = palette.yellow.dim },
        NvimTreeGitDeleted = { fg = palette.yellow.dim },
        NvimTreeGitStaged = { fg = palette.yellow.dim },
        LineNr = { fg = palette.white1 },
    }
}
require 'nordic'.load()
vim.cmd [[colorscheme nordic]]
