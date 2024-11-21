-- Motions
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Windows
vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Ctrl-w" })
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<cr>", { desc = "Focus left window" })
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<cr>", { desc = "Focus bottom window" })
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<cr>", { desc = "Focus top window" })
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<cr>", { desc = "Focus right window" })

-- Misc
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader>xl", "<cmd>lua vim.diagnostic.setloclist()<cr>", { desc = "Location list" })
vim.keymap.set("n", "<leader>xq", "<cmd>lua vim.diagnostic.setqflist()<cr>", { desc = "Quickfix list" })
