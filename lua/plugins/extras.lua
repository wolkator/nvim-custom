return {
	{
		"echasnovski/mini.ai",
		version = false,
		config = true,
	},
	{
		"echasnovski/mini.surround",
		version = false,
		config = true,
	},
	{
		"echasnovski/mini.move",
		version = false,
		opts = {
			mappings = {
				left = "H",
				right = "L",
				down = "J",
				up = "K",
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>s", group = "Search" },
				{ "<leader>c", group = "Code action" },
				{ "<leader>r", group = "Rename" },
				{ "<leader>x", group = "Diagnostic" },
			},
		},
	},
}
