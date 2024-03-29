return {
  {
    'codota/tabnine-nvim',
    build = "./dl_binaries.sh",
    config = function()
      require('tabnine').setup({
        disable_auto_comment = true,
        accept_keymap = "§",
        dismiss_keymap = "±",
        debounce_ms = 800,
        suggestion_color = { gui = "#434C5E", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
        log_file_path = nil,         -- absolute path to Tabnine log file
      })
    end,
  }
}
