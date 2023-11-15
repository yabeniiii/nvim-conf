return {
  {
    "NTBBloodbath/galaxyline.nvim",
    config = function()
      local colors = require("galaxyline.themes.colors").nord
      local gl = require("galaxyline")
      local gls = gl.section
      local condition = require('galaxyline.condition')
      local vcs = require("galaxyline.providers.vcs")

      gl.short_line_list = { "NvimTree" }

      colors.bg = "#434C5E"

      local mode_color = {
        n = colors.blue,
        i = colors.violet,
        v = colors.cyan,
        [""] = colors.cyan,
        V = colors.cyan,
        c = colors.magenta,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [""] = colors.orange,
        ic = colors.yellow,
        R = colors.violet,
        Rv = colors.violet,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ["r?"] = colors.cyan,
        ["!"] = colors.red,
        t = colors.red,
      }

      gls.left[1] = {
        first_bubble_sep_left = {
          provider = function()
            return "  █"
          end,
          highlight = { colors.bg },
          separator = "",
          separator_highlight = { colors.bg }
        }
      }
      gls.left[2] = {
        mode = {
          provider = function()
            -- auto change color according the vim mode
            vim.api.nvim_command("hi Galaxymode guibg=" .. mode_color[vim.fn.mode()])
            vim.api.nvim_command("hi Galaxyfirst_bubble_sep_left guifg=" .. mode_color[vim.fn.mode()])
            vim.api.nvim_command("hi Galaxyfirst_bubble_sep_right guifg=" .. mode_color[vim.fn.mode()])
            return ":3"
          end,
          highlight = { "#2E3440" --[[ colors.fg_alt ]], colors.bg, "bold" },
          separator = "",
        },
      }
      gls.left[3] = {
        first_bubble_sep_right = {
          provider = function()
            return "█ "
          end,
          highlight = { colors.bg },
          separator = "",
          separator_highlight = { colors.bg }
        }
      }
      gls.left[4] = {
        second_bubble_sep_left = {
          provider = function()
            return ""
          end,
          separator = " █",
          separator_highlight = { colors.bg }
        }
      }
      gls.left[5] = {
        git_branch = {
          condition = condition.check_git_workspace,
          provider = function()
            return vcs.get_git_branch()
          end,
          icon = "  ",
          highlight = { colors.fg_alt, colors.bg },
          separator = "██",
          separator_highlight = { colors.bg },
        }
      }
      gls.left[6] = {
        git_add = {
          condition = condition.check_git_workspace,
          provider = function()
            return string.format("+%d", (vcs.diff_add() or 0))
          end,
          highlight = { colors.green, colors.bg },
          separator = "█",
          separator_highlight = { colors.bg }
        }
      }
      gls.left[7] = {
        git_remove = {
          condition = condition.check_git_workspace,
          provider = function()
            return string.format("-%d", (vcs.diff_remove() or 0))
          end,
          highlight = { colors.red, colors.bg },
          separator = "█",
          separator_highlight = { colors.bg }
        }
      }
      gls.left[8] = {
        git_modified = {
          condition = condition.check_git_workspace,
          provider = function()
            return string.format("±%d", (vcs.diff_modified() or 0))
          end,
          highlight = { colors.yellow, colors.bg },
          separator = "█ ",
          separator_highlight = { colors.bg }
        }
      }

      -- right side
      gls.right[1] = {
        diagnostics_error = {
          provider = "DiagnosticError",
          highlight = { colors.red, colors.bg },
          icon = "",
          separator = " █",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[2] = {
        diagnostics_warning = {
          provider = "DiagnosticWarning",
          highlight = { colors.yellow, colors.bg },
          icon = "",
          separator = "█",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[3] = {
        third_bubble_right_sep_right = {
          provider = function()
            return "█ "
          end,
          highlight = { colors.bg },
          separator = "",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[5] = {
        fileicon = {
          provider = "FileIcon",
          highlight = { colors.fg_alt, colors.bg },
          separator = " █",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[6] = {
        filename = {
          provider = "FileName",
          highlight = { colors.fg_alt, colors.bg },
          separator = "",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[7] = {
        second_bubble_right_sep_right = {
          provider = function()
            return "█ "
          end,
          highlight = { colors.bg },
          separator = "",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[8] = {
        location = {
          provider = "LineColumn",
          highlight = { colors.fg_alt, colors.bg },
          separator = " █",
          separator_highlight = { colors.bg }
        }
      }
      gls.right[9] = {
        first_bubble_right_sep_right = {
          provider = function()
            return "█ "
          end,
          highlight = { colors.bg },
          separator = "",
          separator_highlight = { colors.bg }
        }
      }

      gls.short_line_left[1] = {
        first_bubble_sep_left = {
          provider = function()
            return " █"
          end,
          separator = "",
          highlight = { colors.bg }
        }
      }
      gls.short_line_left[2] = {
        mode = {
          provider = function()
            -- auto change color according the vim mode
            vim.api.nvim_command("hi Galaxymode guibg=" .. mode_color[vim.fn.mode()])
            vim.api.nvim_command("hi Galaxyfirst_bubble_sep_left guifg=" .. mode_color[vim.fn.mode()])
            vim.api.nvim_command("hi Galaxyfirst_bubble_sep_right guifg=" .. mode_color[vim.fn.mode()])
            return ":3"
          end,
          highlight = { "#2E3440" --[[ colors.fg_alt ]], colors.bg, "bold" },
          separator = "",
        },
      }
      gls.short_line_left[3] = {
        first_bubble_sep_right = {
          provider = function()
            return "█ "
          end,
          separator = "",
          highlight = { colors.bg }
        }
      }
    end,
    dependencies = {
      "kyazdani42/nvim-web-devicons",
    }
  }
}
