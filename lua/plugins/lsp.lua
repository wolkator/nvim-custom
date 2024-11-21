-- Based on lsp-zero.netlify.app/docs
return {
	{
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
			library = {
				-- See the configuration section for more details
				-- Load luvit types when the `vim.uv` word is found
				{ path = "luvit-meta/library", words = { "vim%.uv" } },
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "williamboman/mason.nvim", config = true },
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"clangd",
					"clang-format",
					"lua-language-server",
					"stylua",
					"python-lsp-server",
					"autopep8",
					"black",
					"shfmt",
				},
			})
			local lspconfig_defaults = require("lspconfig").util.default_config
			lspconfig_defaults.capabilities = vim.tbl_deep_extend(
				"force",
				lspconfig_defaults.capabilities,
				require("cmp_nvim_lsp").default_capabilities()
			)

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(event)
					local map = function(keys, func, desc)
						vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
					end
					map("K", "<cmd>lua vim.lsp.buf.hover()<cr>", "hover")
					map("gd", "<cmd>lua vim.lsp.buf.definition()<cr>", "definition")
					map("gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", "declaration")
					map("gI", "<cmd>lua vim.lsp.buf.implementation()<cr>", "implementation")
					map("go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", "type definition")
					map("gr", "<cmd>lua vim.lsp.buf.references()<cr>", "references")
					map("gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", "signature help")
					map("<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename")
					map("<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code action")
				end,
			})

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							single_file_support = true,
						})
					end,
				},
			})
		end,
	},
}
