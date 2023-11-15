return {
  'jedrzejboczar/nvim-dap-cortex-debug',
  event = 'VeryLazy',
  dependencies = {
    'mfussenegger/nvim-dap',
  },
  config = function()
    require('dap-cortex-debug').setup {
      debug = false,
      extension_path = '/Users/aidanboland/.vscode-oss/extensions/marus25.cortex-debug-1.12.1-universal/',
      lib_extension = nil,
      node_path = '/opt/homebrew/bin/node',
      dapui_rtt = false,
      dap_vscode_filetypes = { 'c', 'cpp' },
    }
  end,
}
