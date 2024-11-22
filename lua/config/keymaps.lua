-- Motions
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- Windows
vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Ctrl-w" })
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<cr>", { desc = "Focus left window" })
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<cr>", { desc = "Focus bottom window" })
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<cr>", { desc = "Focus top window" })
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<cr>", { desc = "Focus right window" })

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "New" })
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close" })
vim.keymap.set("n", "<tab>", "<cmd>tabnext<cr>", { desc = "Next" })
vim.keymap.set("n", "<s-tab>", "<cmd>tabprevious<cr>", { desc = "Previous" })

-- Terminal
vim.keymap.set("n", "<leader>\\", "<cmd>terminal<cr>", { desc = "Terminal" })
vim.keymap.set("t", "<c-h>", "<c-\\><c-n><c-w>h", { desc = "Focus left window" })
vim.keymap.set("t", "<c-j>", "<c-\\><c-n><c-w>j", { desc = "Focus bottom window" })
vim.keymap.set("t", "<c-k>", "<c-\\><c-n><c-w>k", { desc = "Focus top window" })
vim.keymap.set("t", "<c-l>", "<c-\\><c-n><c-w>l", { desc = "Focus right window" })

-- Misc
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>")
vim.keymap.set("n", "<leader>xl", "<cmd>lua vim.diagnostic.setloclist()<cr>", { desc = "Send to location list" })
vim.keymap.set("n", "<leader>xq", "<cmd>lua vim.diagnostic.setqflist()<cr>", { desc = "Send to quickfix list" })
