return {
	"robitx/gp.nvim",
	config = function()
		require("gp").setup({
      -- Make sure you change this to your home directory
      -- Put your openai_api_key in the file and chmod 400 it for security
			openai_api_key = { "cat", "/home/travis/.open_api_key" },
		})
	end,
}
