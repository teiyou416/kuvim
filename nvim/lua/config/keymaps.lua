local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- Esc
keymap.set("i", "jk", "<Esc>") --

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
--open outline
--keymap.set("n", "<C-o>", ":SymbolsOutline<CR>")
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- open oil
--keymap.set("n", "<C-n>", ":Oil<CR>")
-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)
--buffer change
keymap.set("n", "<s-h>", "<Cmd>BufferPrevious<CR>", opts)
keymap.set("n", "<s-l>", "<Cmd>BufferNext<CR>", opts)
keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
-- New tab
--keymap.set("n", "te", ":tabedit")
--keymap.set("n", "<tab>", ":tabnext<Return>", opts)
--keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")
-- open filetree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- Resize window with arrow keys
-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
	require("craftzdog.lsp").toggleInlayHints()
end)

vim.api.nvim_create_user_command("ToggleAutoformat", function()
	require("craftzdog.lsp").toggleAutoformat()
end, {})
