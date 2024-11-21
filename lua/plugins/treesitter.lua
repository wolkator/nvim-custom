return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = { "c", "cpp", "lua", "python", "vim", "vimdoc", "query" },
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
		},
	},
}
