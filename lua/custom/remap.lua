
local set = vim.keymap.set
vim.g.mapleader = " "

set("v", "J", ":m '>+1<CR>gv=gv", {desc="Move marked text down"})
set("v", "K", ":m '<-2<CR>gv=gv", {desc="Move marked text up"})

--Map NVIMTREE to open and Close by pressing F8
set("n", "<leader>c" , vim.cmd.Oil , {desc="Open/Close Nvimtree"})

local builtin = require('telescope.builtin')
--Opens file finder
set('n', '<leader>pf', builtin.find_files ,{desc="[ ] Find file in CWD"})
--Opens all avaiable buffer
set('n', '<leader>b', builtin.buffers, {desc = '[ ] Find existing buffers' })
--Opens last open files
set('n', '<leader>?', builtin.oldfiles, {desc = '[?] Find recently opened files' })
-- Search in file
set('n', '<leader>ss', builtin.current_buffer_fuzzy_find, {desc='[?] Find word in file'})

--get all hotkeys
set('n', '<leader>hh', builtin.keymaps, {desc='[?] Display all Keybinds'})



--TERMINAL BINDS
set('t', 'jk', [[<C-\><C-n>]] )
set('t', '<C-h>', [[<Cmd>wincmd h<CR>]])
set('t', '<C-j>', [[<Cmd>wincmd j<CR>]])
set('t', '<C-k>', [[<Cmd>wincmd k<CR>]])
set('t', '<C-l>', [[<Cmd>wincmd l<CR>]])
set('t', '<C-w>', [[<C-\><C-n><C-w>]])


--markdown mapping
set("n", "<leader>p",vim.cmd.MarkdownPreviewToggle,{desc="Open Markdown file in browser"})


