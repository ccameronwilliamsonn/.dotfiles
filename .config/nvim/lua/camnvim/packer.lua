-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }

    }
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use'sbdchd/neoformat'
    use 'David-Kunz/jester'
    use('tpope/vim-fugitive')
    use('tpope/vim-repeat')
    use('tpope/vim-surround')
    use('tpope/vim-speeddating')
    use('folke/neodev.nvim')
    use('ray-x/lsp_signature.nvim')
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use('tpope/vim-commentary')
    use("andrewferrier/debugprint.nvim")
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('ray-x/aurora')
    use({ 'MrcJkb/haskell-tools.nvim', requires = { { 'nvim-lua/plenary.nvim' } } })
    use 'mfussenegger/nvim-lint'
    use("eandrju/cellular-automaton.nvim")
end)
