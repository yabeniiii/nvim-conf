return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local actions = require("telescope.actions")

      require("telescope").setup {
        defaults = {
          borderchars = {
            '─', '│', '─', '│', '┌', '┐', '┘', '└'
          }
        },
        pickers = {
          find_files = {
            theme = "dropdown",
            borderchars = {
              { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
              prompt = { "─", "│", " ", "│", '┌', '┐', "│", "│" },
              results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
              preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
            },
            width = 0.8,
            previewer = false,
            prompt_title = false
          },
          git_files = {
            theme = "dropdown",
            borderchars = {
              { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
              prompt = { "─", "│", " ", "│", '┌', '┐', "│", "│" },
              results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
              preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
            },
            width = 0.8,
            previewer = false,
            prompt_title = false
          },
          grep_string = {
            theme = "dropdown",
            borderchars = {
              { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
              prompt = { "─", "│", " ", "│", '┌', '┐', "│", "│" },
              results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
              preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
            },
            width = 0.8,
            previewer = false,
            prompt_title = false
          }
        },
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
            }
          }
        }
      }
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end)
    end
  },
}
