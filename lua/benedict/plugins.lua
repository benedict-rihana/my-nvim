local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
-- We can do packer = require("packer"), but this does not return status
-- The following protected call will get the status of the function call result
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here

  -- pull the latest version, no commit hash specified
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/plenary.nvim" -- usefule lua functions used by lots of plugins
  use 'nvim-lua/popup.nvim'
  use { 'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  use "moll/vim-bbye"
  use "goolord/alpha-nvim"
  use "lewis6991/impatient.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "akinsho/toggleterm.nvim"
  use("folke/which-key.nvim")

  use "windwp/nvim-autopairs"
  use "lukas-reineke/indent-blankline.nvim"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "BurntSushi/ripgrep"
  use "sharkdp/fd"
  -- Colorschemes
  -- use "folke/tokyonight.nvim"
  -- use "lunarvim/darkplus.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Markdown plugins
  use "ellisonleao/glow.nvim" -- markdown preview
  -- cmp plugins

  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "jose-elias-alvarez/null-ls.nvim"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  -- Only support linux so it is not very useful
  -- use "nvim-telescope/telescope-media-files.nvim"
  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use { "luckasRanarison/tree-sitter-hypr" }
  -- Git
  use("lewis6991/gitsigns.nvim")
  -- Comment plugins
  use("numToStr/Comment.nvim")
  --use("JoosepAlviste/nvim-ts-context-commentstring")
  use("norcalli/nvim-colorizer.lua")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
