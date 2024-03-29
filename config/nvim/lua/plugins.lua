return require('packer').startup(function()
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }
  use { 'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}} }

  -- telescope optional dependecy to improve sorting performance
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- telescope optional dependency for preview
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'

  use { 'tpope/vim-fugitive' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
