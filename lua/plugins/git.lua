return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "x" },
				topdelete = { text = "x" },
				changedelete = { text = "~" },
			},
		},
	},
	{
		"kdheepak/lazygit.nvim",
		keys = {
			{ "<leader>g", "<cmd>LazyGit<cr>", desc = "Git" },
		},
	},
}
