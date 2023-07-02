-- bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

    -- Colourschemes
    {
        "catppuccin/nvim",
        --config = function()
        --    vim.cmd [[colorscheme catppuccin]]
        --end
    },
    "kunzaatko/nord.nvim",
    --"andersevenrud/nordic.nvim",
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
    },

    -- plugins
    "nvim-treesitter/nvim-treesitter",
    "theprimeagen/harpoon",
    "tpope/vim-fugitive",
    "andweeb/presence.nvim",
    "lukas-reineke/indent-blankline.nvim",
    "kristijanhusak/vim-carbon-now-sh",
    "ThePrimeagen/vim-be-good",
    "godlygeek/tabular",
    "preservim/vim-markdown",
    "iamcco/markdown-preview.nvim",
    "numToStr/Comment.nvim",
    "christoomey/vim-tmux-navigator",
    "RyanMillerC/better-vim-tmux-resizer",
    "windwp/nvim-ts-autotag",
    "nguyenvukhang/nvim-toggler",
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { { "nvim-lua/plenary.nvim" } },
        config = function()
            local actions = require("telescope.actions")

            require("telescope").setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-j>"] = actions.move_selection_next,
                            ["<C-k>"] = actions.move_selection_previous,
                        }
                    }
                }
            }
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    -- {
    -- "nvim-neo-tree/neo-tree.nvim",
    --  dependencies = {
    -- "nvim-lua/plenary.nvim",
    -- "nvim-tree/nvim-web-devicons",
    --   "MunifTanjim/nui.nvim",
    --    }
    -- },
    {
        "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
        }
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            "MunifTanjim/nui.nvim",
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            {
                "rcarriga/nvim-notify",
                config = function()
                    require("notify").setup({
                        background_colour = "#000000",
                    })
                end
            },
        },
        config = function()
            require("noice").setup({
                presets = {
                    -- you can enable a preset by setting it to true, or a table that will override the preset config
                    -- you can also add custom presets that you can enable/disable with enabled=true
                    bottom_search = true,          -- use a classic bottom cmdline for search
                    command_palette = true,        -- position the cmdline and popupmenu together
                    long_message_to_split = false, -- long messages will be sent to a split
                    inc_rename = false,            -- enables an input dialog for inc-rename.nvim
                }
            })
        end
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "m4xshen/smartcolumn.nvim",
        opts = {
            scope = "line"
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    -- {
    --     'mawkler/modicator.nvim',
    --     dependencies = 'catppuccin/nvim', -- Add your colorscheme plugin here
    --     init = function()
    --         -- These are required for Modicator to work
    --         vim.o.cursorline = true
    --         vim.o.number = true
    --         vim.o.termguicolors = true
    --     end,
    --     config = function()
    --         require('modicator').setup()
    --     end,
    -- },
    --{
    --    "RRethy/vim-illuminate",
    --    config = function()
    --        vim.api.nvim_set_hl(0, 'IlluminatedWordRead', { bg = "#313244" })
    --        vim.api.nvim_set_hl(0, 'IlluminatedWordWrite', { bg = "#313244" })
    --    end
    --},
}

local opts = {}

require("lazy").setup(plugins, opts)
