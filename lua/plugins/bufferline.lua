return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				show_buffer_icons = true,
				separator_style = "slope",
        themable = true,
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
				indicator = {
					style = "underline",
				},
        buffer_close_icon = '',
				offsets = {
					{
						filetype = "neo-tree",
						text = "Neo Tree",
						text_align = "center",
						separator = false,
					},
				},
				highlights = {
					indicator_selected = {
						sp = "#f5bde6",
						fg = "#f5bde6",
						bg = "#f5bde6",
					},
					buffer_selected = {
						sp = "#f5bde6",
						fg = "#f5bde6",
						bg = "#f5bde6",
					},
				},
        groups = {
          items = {
            require('bufferline.groups').builtin.pinned:with({ icon = '*'})

          },
        },
			},
		})
	end,
}
