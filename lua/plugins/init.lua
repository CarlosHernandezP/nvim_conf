-- Copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- Not very used (yet)
vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Cancel()', { silent = true, expr = true })

return require('packer').startup(function()
  -- ... other plugins ...
  use "tpope/vim-fugitive"
  use "github/copilot"
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- ... other plugins ...
end)
