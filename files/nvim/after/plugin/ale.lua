vim.g.ale_fix_on_save = 1
vim.g.ale_disable_lsp = 1
vim.g.ale_python_ruff_options = "--select F --select E --select W --select I --select D --select PLC --select PLE --select PLR --select PLW"
local fixers = {
    python = {'ruff', 'black', 'autoimport'}
}
fixers["*"] = {'remove_trailing_lines', 'trim_whitespace'}
vim.g.ale_fixers = fixers
vim.g.ale_linters = { python = {'ruff'}}
