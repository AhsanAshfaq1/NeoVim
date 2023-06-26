-- custom mapping here from neovim

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Map leader to space
map("n", "<Space>", "", opts)
vim.g.mapleader = " "

-- Map for saving
map("n", "<leader>w", ":w<CR>", opts)

-- Map for quitting
map("n", "<leader>q", ":q<CR>", opts)

-- Map for saving and quitting
map("n", "<leader>x", ":wq<CR>", opts)

-- Map for opening a new tab
map("n", "<leader>t", ":tabnew<CR>", opts)

-- Map for switching between tabs
map("n", "<leader>1", "1gt", opts)
map("n", "<leader>2", "2gt", opts)
map("n", "<leader>3", "3gt", opts)
map("n", "<leader>4", "4gt", opts)
map("n", "<leader>5", "5gt", opts)
map("n", "<leader>6", "6gt", opts)

-- Map for moving between splits
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Map for moving between windows
map("n", "<leader>h", "<C-w>h", opts)
map("n", "<leader>j", "<C-w>j", opts)
map("n", "<leader>k", "<C-w>k", opts)
map("n", "<leader>l", "<C-w>l", opts)

-- Map for moving between tabs
map("n", "<leader>.", ":tabnext<CR>", opts)
map("n", "<leader>,", ":tabprevious<CR>", opts)

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>",opts)
map("n", "<leader>o", "<CMD>Neotree focus<CR>",opts)

-- Control Z to undo in normal or insert mode
map("n", "<C-z>", "u", opts)
map("i", "<C-z>", "<Esc>ui", opts)

-- Map for commenting

-- Map to select text to be shift and up down 
map("v", "<S-Up>", "<Esc>:m '<-2<CR>gv=gv", opts)
map("v", "<S-Down>", "<Esc>:m '>+1<CR>gv=gv", opts)
map("v", "<S-Left>", "<Esc>:m '<-2<CR>gv=gv", opts)
map("v", "<S-Right>", "<Esc>:m '>+1<CR>gv=gv", opts)


