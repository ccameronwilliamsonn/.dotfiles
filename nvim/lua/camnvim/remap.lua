vim.g.mapleader = " "

-- Open file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Format document
vim.keymap.set("n", "<leader>f", vim.cmd.Neoformat)

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Paste from system clipboard
vim.keymap.set({"n", "v"}, "<leader>pp", [["+p]])
vim.keymap.set("n", "<leader>PP", [["+P]])

-- Center view on scroll
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Delete to the void (dont overwrite existing)
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Just for fun
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- Clear search highlighting
vim.keymap.set("n", "<leader>/", vim.cmd.noh)

-- Run http request under cursor
vim.keymap.set("n", "<leader>h", "<Plug>RestNvim")


-- Open trouble
vim.keymap.set("n", "<leader>tt", vim.cmd.Trouble)

-- Open todo using trouble window
vim.keymap.set("n", "<leader>td", vim.cmd.TodoTrouble)


-- Remove all debug logs
vim.keymap.set("n", "g?d", vim.cmd.DeleteDebugPrints)
