local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Navigate to next buffer
vim.api.nvim_set_keymap('n', '<leader>h', ':bn<CR>', { noremap = true, silent = true })

-- Navigate to previous buffer
vim.api.nvim_set_keymap('n', '<leader>l', ':bp<CR>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<S-Tab>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- remaps <C-w> with ' (move cursor to Nth window)
vim.keymap.set("n", "'", "<C-w>", opts)


-- moves the selected text when in visual mode
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)

-- create an executable
vim.keymap.set("n", "<A-x>", ":!chmod +x %<CR>", opts)


-- better indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- set kj as Esc
vim.keymap.set("i", "kj", "<Esc>", opts)
vim.keymap.set("n", "kj", "<Esc>", opts)
vim.keymap.set("v", "kj", "<Esc>", opts)
vim.keymap.set("n", "<leader>o", ":source $HOME/.config/nvim/init.lua <CR>", opts)


-- copilot keymaps

vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true



vim.keymap.set('i', '<C-[>', '<Plug>(copilot-dismiss)')
vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<M-\\>', '<Plug>(copilot-suggest)')
vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)')
