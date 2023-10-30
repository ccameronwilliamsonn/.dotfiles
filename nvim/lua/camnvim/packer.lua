-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        "rest-nvim/rest.nvim",
        requires = { "nvim-lua/plenary.nvim" },
        config = function()
            require("rest-nvim").setup({
                -- Open request results in a horizontal split
                result_split_horizontal = false,
                -- Keep the http file buffer above|left when split horizontal|vertical
                result_split_in_place = false,
                -- Skip SSL verification, useful for unknown certificates
                skip_ssl_verification = false,
                -- Encode URL before making request
                encode_url = true,
                -- Highlight request on run
                highlight = {
                    enabled = true,
                    timeout = 150,
                },
                result = {
                    -- toggle showing URL, HTTP info, headers at top the of result window
                    show_url = true,
                    -- show the generated curl command in case you want to launch
                    -- the same request via the terminal (can be verbose)
                    show_curl_command = false,
                    show_http_info = true,
                    show_headers = true,
                    -- executables or functions for formatting response body [optional]
                    -- set them to false if you want to disable them
                    formatters = {
                        json = "jq",
                        html = function(body)
                            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
                        end
                    },
                },
                -- Jump to request line on run
                jump_to_request = false,
                env_file = '.env',
                custom_dynamic_variables = {},
                yank_dry_run = true,
            })
        end
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }

    }
    use({
        "folke/trouble.nvim",
        requires = { {'nvim-tree/nvim-web-devicons' } },
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use'sbdchd/neoformat'
    -- use 'David-Kunz/jester'
    use('tpope/vim-fugitive')
    use('tpope/vim-unimpaired')
    use('tpope/vim-repeat')
    use('wellle/targets.vim')
    use('tpope/vim-surround')
    use('tpope/vim-speeddating')
    use('folke/neodev.nvim')
    use({ 'folke/todo-comments.nvim', requires = { {"nvim-lua/plenary.nvim"}}, })
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
    use('folke/tokyonight.nvim')
    use({ 'MrcJkb/haskell-tools.nvim', requires = { { 'nvim-lua/plenary.nvim' } } })
    use 'mfussenegger/nvim-lint'
    use("eandrju/cellular-automaton.nvim")
end)
