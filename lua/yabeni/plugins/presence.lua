return {
  {
    "andweeb/presence.nvim",
    config = function()
      require("presence").setup({
        neovim_image_text = "I don't know what I'm doing!",
        main_image = "file",
      })
    end,
  },
}
