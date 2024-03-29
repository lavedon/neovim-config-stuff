vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  use({ 'rose-pine/neovim', as = 'rose-pine' })

  vim.cmd('colorscheme rose-pine')

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('preservim/nerdtree')
  use('RishabhRD/popfix')
  use('RishabhRD/nvim-cheat.sh')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
  -- LSP Support
  {'neovim/nvim-lspconfig'},             -- Required
  {                                      -- Optional
  'williamboman/mason.nvim',
  run = function()
	  pcall(vim.cmd, 'MasonUpdate')
  end,
  },
  {'williamboman/mason-lspconfig.nvim'}, -- Optional

  -- Autocompletion
  {'hrsh7th/nvim-cmp'},     -- Required
  {'hrsh7th/cmp-nvim-lsp'}, -- Required
  {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
    })

  end,
}
use {
  "zbirenbaum/copilot-cmp",
  after = { "copilot.lua" },
  config = function ()
    require("copilot_cmp").setup()
  end
}


end)
