return {
	"tpope/vim-sleuth",
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		keys = {
			{ "<leader>st", "<cmd>TodoFzfLua<cr>", desc = "Todo" },
		},
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		opts = {},
		keys = {
			{
				"<leader>ls",
				function()
					require("persistence").select()
				end,
				desc = "Load session",
			},
		},
	},
	{
		"echasnovski/mini.statusline",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.ai",
		version = false,
		opts = {},
	},
	{
		"echasnovski/mini.surround",
		version = false,
		opts = {},
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
				{ "<leader>l", group = "Load session" },
				{ "<leader>r", group = "Rename" },
				{ "<leader>t", group = "Tab" },
				{ "<leader>x", group = "Diagnostic" },
			},
		},
	},
}
