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
				-- filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" },
				cmd = { "typescript-language-server", "--stdio" },
			})
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
			})
      lspconfig.nil_ls.setup({
        capabilities = capabilities,
      })
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.solargraph.setup({
				capabilities = capabilities,
				diagnostics = false,
			})
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
          "--compile-commands-dir=/home/travis/repos/travyboard/firmware/build/",
					"--background-index",
					-- "--clang-tidy",
					"--header-insertion=iwyu",
					"--header-insertion-decorators=0",
					"--pch-storage=memory",
          "--query-driver=/nix/store/v6qyp70ksb0gynr6nn9h6bx6cwq9k5ds-gcc-arm-embedded-12.3.rel1/bin/arm-none-eabi-g++,/run/current-system/sw/bin/arm-none-eabi-gcc"
				},
			})
		end,
	},
}
