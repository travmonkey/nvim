return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	config = function()
    require("gruvbox").setup({
      terminal_colors = true,
      contrast = "soft",
      vim.cmd.colorscheme('gruvbox'),
      vim.cmd([[highlight NormalFloat guibg=#282828]]),
      vim.cmd([[highlight LspInfoBorder guifg=#ebdbb2]]),
      vim.cmd([[highlight NoiceCmdlinePopup guibg=#282828]]),
      vim.cmd([[highlight NoiceCmdlinePopupBorder guibg=#282828]]),
      vim.cmd([[highlight NoiceCmdlinePopupBorder guifg=#83a598]]),

    })
  end,
}
