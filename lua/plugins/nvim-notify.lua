return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  opts = {},
  config = function()
    require("notify").setup({
      fps = 144,
      render = "compact",
      stages = "slide",
      timeout = 750,
    })
  end,
}
