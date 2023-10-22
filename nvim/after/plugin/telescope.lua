local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})

vim.keymap.set('n', '<leader>pb', builtin.buffers, {} )

require('telescope').setup({
    pickers = {
        buffers = {
            show_all_buffers = true,
            sort_mru = true,
            ignore_current_buffer = true,
        }
    }
})

