function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function write_mappings_to_file()
  vim.cmd([[
    :redir! > ~/Dotfiles/nvim_mappings.txt
    :silent verbose map
    :redir END
  ]])
end

vim.g.mapleader = ' '
nmap('<leader>n', ':noh<cr>')
nmap('<c-j>', '<c-\\><c-n><c-w>j')
nmap('<c-k>', '<c-\\><c-n><c-w>k')
nmap('<c-h>', '<c-\\><c-n><c-w>h')
nmap('<c-l>', '<c-\\><c-n><c-w>l')
nmap('<leader>ta', ':Telescope find_files<cr>')
nmap('<leader><c-p>', ':Telescope live_grep<cr>')
nmap('<leader>tb', ':Telescope buffers<cr>')
nmap('<c-p>', ":lua require('telescope.builtin').find_files({search_dirs = {'app', 'config/locales', 'config/routes.rb'}})<cr>")
nmap('<leader>ts', ":lua require('telescope.builtin').find_files({search_dirs = {'spec'}})<cr>")
nmap('<leader>tf', ':Telescope find_files<cr>')
nmap('<leader>q', ':bp<bar>sp<bar>bn<bar>bd<cr>')
nmap('<leader>cp', ':let @* = expand("%")<cr>')
-- nmap('<leader>sr', '
-- nmap('', '')
vim.cmd([[
autocmd FileType qf map <buffer> dd :RemoveQFItem<c-r>
]])
