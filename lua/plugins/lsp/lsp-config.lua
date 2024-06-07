return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
				filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
				cmd = { "typescript-language-server", "--stdio" },
			})
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.solargraph.setup({
				capabilities = capabilities,
				diagnostics = false,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
    --   lspconfig.ccls.setup({
    --     capabilities = capabilities,
				-- root_dir = lspconfig.util.root_pattern("CmakeLists.txt", ".git"),
    --     cmd = {
    --       "ccls",
    --       "--compile-commands-dir=/home/travis/custom/build/"
    --     }
    --   })
			lspconfig.clangd.setup({
				capabilities = capabilities,
				filetypes = { "c", "cpp" },
				root_dir = lspconfig.util.root_pattern("CmakeLists.txt", ".git"),
				cmd = {
					"/usr/bin/clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=iwyu",
					"--header-insertion-decorators=0",
					"--pch-storage=memory",
          -- "-I /usr/bin/clang++",
          -- "-I/usr/include/c++/v1/",
					-- "--compile-commands-dir=/home/travis/custom/build/",
          -- "--query-driver=/usr/include/c++/14.1.1/",
				},
			})
		end,
	},
}
