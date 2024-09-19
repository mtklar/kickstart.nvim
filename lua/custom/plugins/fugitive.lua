return {
  'tpope/vim-fugitive',
  vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Toggle [G]it' }),
}
