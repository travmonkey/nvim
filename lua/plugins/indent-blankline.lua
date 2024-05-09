return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	use_treesitter = true,
	opts = {},
	config = function()
		local highlight = {
			"Red",
			"Yellow",
			"Blue",
			"Orange",
			"Green",
			"Violet",
		}
		local hooks = require("ibl.hooks")
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "Red", { fg = "#ED8796" })
			vim.api.nvim_set_hl(0, "Yellow", { fg = "#EED49F" })
			vim.api.nvim_set_hl(0, "Blue", { fg = "#8AADF4" })
			vim.api.nvim_set_hl(0, "Orange", { fg = "#F5A97F" })
			vim.api.nvim_set_hl(0, "Green", { fg = "#A6DA95" })
			vim.api.nvim_set_hl(0, "Violet", { fg = "#C6A0F6" })
		end)

		require("ibl").setup({ indent = { highlight = highlight } })
	end,
}
