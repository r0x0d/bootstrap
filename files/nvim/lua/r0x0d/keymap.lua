function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<F12>', ':ALEToggle<CR>', { silent = true })
map('n', '<TAB>', ':bnext<CR>', { silent = true })
map('n', '<S-TAB>', ':bprevious<CR>', { silent = true })
