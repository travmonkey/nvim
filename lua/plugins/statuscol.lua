return {
	"luukvbaal/statuscol.nvim",
	config = function()
		require("statuscol").setup({
			-- configuration goes here, for example:
			-- relculright = true,
			segments = {
				{
					-- GitSigns
					condition = { true },
					sign = {
						namespace = { "gitsigns" },
						maxwidth = 1,
						colwidth = 1,
						auto = true,
						wrap = false,
						fillchar = " ",
					},
				},
				{
					-- LSP Diagnostics
					condition = { true },
					sign = {
						namespace = { "diagnostic/signs" },
						maxwidth = 1,
						colwidth = 1,
						auto = true,
						wrap = false,
						fillchar = " ",
					},
				},
				{
					-- Line Number
					text = { require("statuscol.builtin").lnumfunc, " "},
					condition = { true },
				},
			},
		})
	end,
}
