return {
	"robitx/gp.nvim",
	config = function()
		require("gp").setup({
			openai_api_key = { "cat", "/home/travis/.open_api_key" },
		})
	end,
}
