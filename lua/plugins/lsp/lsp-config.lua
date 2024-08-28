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
			-- lspconfig.cssls.setup({
			-- 	capabilities = capabilities,
			-- })
			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})
      lspconfig.prosemd_lsp.setup({
        capabilities = capabilities,
      })
			lspconfig.clangd.setup({
				capabilities = capabilities,
				filetypes = { "c", "cpp" },
				root_dir = lspconfig.util.root_pattern("CmakeLists.txt", ".git"),
				cmd = {
					"clangd",
					"--background-index",
					"--clang-tidy",
					"--header-insertion=iwyu",
					"--header-insertion-decorators=0",
					"--pch-storage=memory",
          "--query-driver=/usr/bin/arm-none-eabi-g++,/usr/bin/arm-none-eabi-gcc"
				},
			})
		end,
	},
}
