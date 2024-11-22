return {
	{
		"stevearc/conform.nvim",
		opts = {
			format_on_save = {
				async = false,
				timeout_ms = 500,
			},
			notify_on_error = false,
			formatters_by_ft = {
				c = { "clang-format" },
				cpp = { "clang-format" },
				fish = { "fish_indent" },
				lua = { "stylua" },
				python = { "autopep8", "black" },
				shell = { "shfmt" },
				-- TODO: add yaml and xml formatters
			},
			formatters = {
				["clang-format"] = { prepend_args = { "--style=Microsoft" } },
			},
		},
	},
}
