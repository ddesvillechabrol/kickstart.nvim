-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
    end,
  },
  {
    'Vimjas/vim-python-pep8-indent',
  },
  {
    "shortcuts/no-neck-pain.nvim",
    version = "*",
    config = function()
      require('no-neck-pain').setup({
        width = 150,
        buffers = {
          scratchPad = {
            enabled = true,
          },
        },
      })
      vim.keymap.set('n', '<leader>z', '<cmd>NoNeckPain<cr>', { desc = 'Toggle zen mod' })
    end,
  },
}
