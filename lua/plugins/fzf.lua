return {
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			"fzf-native",
			keymap = {
				fzf = {
					["ctrl-q"] = "select-all+accept",
				},
			},
		},
		keys = {
			{ "<leader>ss", "<cmd>FzfLua builtin<cr>", desc = "Fzf builtin" },
			{ "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Files" },
			{ "<leader>sb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
			{ "<leader>s.", "<cmd>FzfLua oldfiles<cr>", desc = "Recent files" },
			{ "<leader>sh", "<cmd>FzfLua help_tags<cr>", desc = "Help" },
			{ "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Grep" },
			{ "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Word under cursor" },
			{ "<leader>sr", "<cmd>FzfLua resume<cr>", desc = "Resume" },
			{
				"<leader>sc",
				function()
					require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
				end,
				desc = "Config files",
			},
		},
	},
}
