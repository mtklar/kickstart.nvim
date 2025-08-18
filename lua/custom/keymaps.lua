-- My options
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.termguicolors = true
vim.opt.colorcolumn = '80'
vim.opt.shiftwidth = 4

-- My Keymaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set({ 'n', 'i' }, '<m-i>', '<esc>i```{python}<cr>```<esc>O', { desc = '[i]nsert code chunk' })
vim.keymap.set({ 'n' }, '<leader>ci', ':split term://ipython<cr>', { desc = '[c]ode repl [i]python' })

-- keep past in void buffer
vim.keymap.set('x', '<leader>p', [["_dP]])

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

vim.keymap.set('n', 'Q', '<nop>')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- My autocommands
vim.api.nvim_create_autocmd('TermOpen', {
  desc = 'remove line numbers in terminal',
  group = vim.api.nvim_create_augroup('kickstart-term', { clear = true }),
  callback = function()
    vim.wo.number = false
  end,
})
