local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- The almighty leader
keymap("", "<Space>", "<Nop>", opts) -- Dissable initial use of <Space>
vim.g.mapleader = " "       -- Sets the almighty leader
vim.g.maplocalleader = " "  -- Setting <leader> for mappings local to a buffer



-- Keymaps for Telescope
keymap('n', '<Leader>ff', '<Cmd>Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', '<Cmd>Telescope live_grep<CR>', opts)
keymap('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', opts)
keymap('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', opts)

-- Keymaps for Telescope
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)
keymap("n", "<C-f>", ":Telescope live_grep<CR>", opts)
keymap('n', '<Leader>fb', '<Cmd>Telescope buffers<CR>', opts)
keymap('n', '<Leader>fh', '<Cmd>Telescope help_tags<CR>', opts)

-- Mapping Ctrl+S to save the file
keymap('n', '<C-s>', ':w<CR>', opts)
keymap('i', '<C-s>', '<Esc>:w<CR>', opts)

-- Tab navigation
keymap("n", "H", ":tabprevious<cr>", opts)
keymap("n", "L", ":tabnext<cr>", opts)

-- Resourcing the file
keymap("n", "<leader>r", ":source %<cr>", {noremap=true})

-- Your Git mappings here
keymap("n", "<leader>ga", ":Git add %:p<CR>", opts)
keymap("n", "<leader>gs", ":Git<CR>", opts)
keymap("n", "<leader><leader>gs", ":Gtabedit :<CR>", opts)
keymap("n", "<leader>gc", ":Git commit<CR>", opts)
keymap("n", "<leader>gp", ":Git push<CR>", opts)
