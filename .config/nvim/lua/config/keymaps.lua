local keymap = vim.keymap

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Nav left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Nav down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Nav up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Nav right

-- Window Management
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split vertical
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split horizontal
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Minimize
