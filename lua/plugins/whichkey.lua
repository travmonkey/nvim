return {
	"folke/which-key.nvim",
	dependencies = {
		"echasnovski/mini.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 200
	end,
	opts = {
    preset = "helix",
    win = {
      padding = { 1, 0 },
      title = true,
    }
  },
}
